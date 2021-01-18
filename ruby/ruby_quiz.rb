class Question
    attr_accessor :prompt, :answer
    def initialize (prompt, answer)
    @prompt =prompt
    @answer =answer
    end
end

p1 = "what color are apples?\n(a)red\n(b)purple\n(c)black"
p2="what color are bananas? \n(a)pink\n(b)red\n(c)yellow"
p3 ="What color are pears? \n(a)blue\n(b)orange\n(c)green"

questions =[
    Question.new(p1,"a"),
    Question.new(p2, "c"),
    Question.new(p3, "c")
]

def run_test(questions)
    answer =""
    score =0
    for question in questions
        puts question.prompt
        answer=gets.chomp()
        if answer == question.answer
            score +=1
        end
    end
    puts ("you got" + score.to_s + "/" + questions.length().to_s)
end

run_test(questions)