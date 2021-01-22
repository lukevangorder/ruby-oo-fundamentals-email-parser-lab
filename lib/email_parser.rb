# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    def initialize (list)
        @list = list
    end
    def parse
        @list.delete!(",")
        @list = @list.split(" ")
        @list.map do |address|
            while @list.count(address)>1
                @list.delete_at(@list.index(address))
            end
        end
        @list
    end
end