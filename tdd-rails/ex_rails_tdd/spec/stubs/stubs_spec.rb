require 'student'
require 'course'

describe 'Stub' do
  # the stub fakes only the response, althoug the objects exist
  it '#has_finished?' do
    student = Student.new
    course = Course.new
    # receive a method
    allow(student).to receive(:has_finished?)
    # with parameter class
    .with(an_instance_of(Course))
    # and return a state
    .and_return(true)
    course_finished = student.has_finished?(course)

    student.has_finished?(course)
    # verify
    expect(course_finished).to be_truthy
  end

  it 'Dinamic Argumentos' do
    student = Student.new

    allow(student).to receive(:foo) do |arg|
      if arg == :hello
        'olá'
      elsif arg == :hi
        'Hi!!!'
      end
    end

    expect(student.foo(:hello)).to eq('olá')
    expect(student.foo(:hi)).to eq('Hi!!!')
  end

  it 'Qualquer instância de Classe' do
    student = Student.new
    other_student = Student.new

    allow_any_instance_of(Student).to receive(:bar).and_return(true)

    expect(student.bar).to be_truthy
    expect(other_student.bar).to be_truthy

  end

  it 'Error stub' do
    student = Student.new
    other_student = Student.new

    allow_any_instance_of(Student).to receive(:bar).and_raise(RuntimeError)

    expect { other_student.bar }.to raise_error(RuntimeError)
  end
end
