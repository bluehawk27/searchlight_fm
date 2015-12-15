module Paperclip
  class Attachment
    def save
      @queued_for_delete = []
      @queued_for_write = {}
      true
    end

  private
    def post_process
      true
    end
  end

  class ContentTypeDetector
  private
    def empty?
      false
    end
  end
end