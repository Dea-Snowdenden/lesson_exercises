class Members
  def initialize(full_name)
    @fullname = full_name
  end

  def full_name
    @full_name
  end

end
      class Student < Members
        def initialize(full_name, about)
          super(full_name)
          @about = about
        end

        def about
          @about
        end

      end

      class Coach < Members
        def initialize(full_name, bio, skills)
          super(full_name)
          @bio = bio
          @skills = skills
        end

        def bio
          @bio
        end

        def skills
            @skills
        end

      end

      class Workshops
        def initialize(date, venue_name, coaches, students)
          @date = date
          @venue_name = venue_name
          @coaches = coaches
          @students = students
        end
      end

        def add_participant
            student_array = []
            coach_array = []
          if member.class == student
            student_array << @full_name
          elsif member.class == Coach
            coach_array = @full_name, @bio, @skills
          else puts "error"
          end
        end



jane = Student.new("Jane Doe", "I am trying to learn Ruby")
#vicky = Coach.new("Vicky Ruby", "I want to help people")

puts jane.add_participant
puts vicky.add_coach
