# Write your code here.

def dictionary
  replace_hash = {"hello" => 'hi', "to" => "2", "two" => "2", "too" => "2", "for" => "4",
  "four" => "4", "be" => "b", "you"=> "u", "at" => "@", "and" => "&"}
  replace_hash
end

def word_substituter(tweet)
  some_array = tweet.split(" ")
  for count in 0...some_array.length do
    dictionary.each do |long, short|
      if some_array[count].downcase == long
    some_array[count] = short
  end
  end
  end
  some_array =  some_array.join(" ")
  some_array
  end

  def bulk_tweet_shortener (array)
    for count in 0...array.length do
      puts word_substituter(array[count])
    end

    end

    def selective_tweet_shortener (tweet)
      if tweet.length > 140
        word_substituter(tweet)
      else
        tweet
      end
    end

    def shortened_tweet_truncator (tweet)
      if word_substituter(tweet).length > 140
        tweet = tweet[0...140]
        else
          word_substituter(tweet)
        end
      end
