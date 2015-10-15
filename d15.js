function Link(value) {
  this.value = value;
  this.next = null;
  this.prev = null;
}

Link.prototype.next = function() {
  return this.next;
}

Link.prototype.prev = function() {
  return this.prev;
}

Link.prototype.insert = function(item) {
   this.next = item;
   item.prev = this;
}

Link.prototype.remove = function() {
  this.prev.next = this.next;
  this.next.prev = this.prev;
}

function LinkedList() {
  this.first = null;
  this.last = null;
}

LinkedList.prototype.first = function() {
  return this.first;
}

LinkedList.prototype.last = function() {
  return this.last;
}

LinkedList.prototype.push = function(link) {
  if (this.first === null) {
    this.first = link;
  } else {

  }
}

LinkedList.prototype.pop = function(link) {
  
}
