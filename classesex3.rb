class Members
  def initialize(full_name)
    @full_name = full_name
  end

attr_accessor :full_name

end
      class Student < Members
        def initialize(full_name, about)
          super(full_name)
          @about = about
        end

        attr_accessor :about

      end

      class Coach < Members
        def initialize(full_name, bio)
          super(full_name)
          @bio = bio
          @skills = []
        end

        attr_accessor :bio, :skills

        def add_skill(skill)
          @skills << skill
        end
      end

      class Workshop < Members
        def initialize(date, venue_name)
          @date = date
          @venue_name = venue_name
          @coaches = []
          @students = []
          super (full_name)
        end

        def add_participant(member)
            if member.is_a?(Student)
              @students << member
            else
              @coaches << member

            end
        end

        attr_accessor :date, :venue_name, :coaches, :students, :full_name

        def print_details
          puts " "
          print_workshops
          puts " "
          print_coaches
          puts " "
          print_students

        end

          private
          def print_workshops
            puts "Workshop - #{date} - Venue: #{venue_name}"
          end

          private
          def print_coaches
            puts "Coaches"
              @coaches.each do |coach|
              print "#{coach.full_name} - "
              coach.skills.each do |skill|
                print "#{skill},"
              end
              puts "\n#{coach.bio}"
            end

          end

            private
            def print_students
              puts "Students"
              @students.each do |student|
                puts "#{student.full_name} - #{student.about}"
              end
            end



      end


      workshop = Workshop.new("12/03/2014", "Shutl")

      jane = Student.new("Jane Doe", "I am trying to learn programming and need some help")
      lena = Student.new("Lena Smith", "I am really excited about learning to program!")
      vicky = Coach.new("Vicky Ruby", "I want to help people learn coding.")
      vicky.add_skill("HTML")
      vicky.add_skill("JavaScript")
      nicole = Coach.new("Nicole McMillan", "I have been programming for 5 years in Ruby and want to spread the love")
      nicole.add_skill("Ruby")

      workshop.add_participant(jane)
       workshop.add_participant(lena)
       workshop.add_participant(vicky)
       workshop.add_participant(nicole)
       workshop.print_details
      workshop.coaches
