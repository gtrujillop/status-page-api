class HashSerializer
  def self.dump(hash)
    hash
  end

  def self.load(hash)
    return HashWithIndifferentAccess.new if hash.nil?

    return hash.with_indifferent_access if hash.instance_of? Hash

    hash
  end
end
