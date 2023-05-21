//Implement a method with signature concatenate (LinkedQueue Q2) for the LinkedQueue class that takes all elements of Q2 and appends them to the end of the original queue. The operation should run in O (1) time and should result in Q2 being an empty queue. (use implementation from Goodrich book).
// A linked list (LL) node to store a queue entry
class QNode {
    int key;
    QNode next;
 
    // constructor to create a new linked list node
    public QNode(int key)
    {
        this.key = key;
        this.next = null;
    }
}
 
// A class to represent a queue
// The queue, front stores the front node of LL and rear stores the
// last node of LL
class Queue {
    QNode front, rear;

 
    public Queue()
    {
        this.front = this.rear = null;
    }
 
    // Method to add an key to the queue.
    void enqueue(int key)
    {
 
        // Create a new LL node
        QNode temp = new QNode(key);
 
        // If queue is empty, then new node is front and rear both
        if (this.rear == null) {
            this.front = this.rear = temp;
            return;
        }
 
        // Add the new node at the end of queue and change rear
        this.rear.next = temp;
        this.rear = temp;
    }
 
    // Method to remove an key from queue.
    void dequeue()
    {

        // If queue is empty, return NULL.
        if (this.front == null)
            return;
 
        // Store previous front and move front one node ahead
        QNode temp = this.front;
        this.front = this.front.next;
 
        // If front becomes NULL, then change rear also as NULL
        if (this.front == null)
            this.rear = null;
    }
}
 
// Driver class
public class Test {
    public static void main(String[] args)
    {
        Queue q = new Queue();
        q.enqueue(10);
        q.enqueue(20);
        q.dequeue();
        q.dequeue();
        q.enqueue(30);
        q.enqueue(40);
        q.enqueue(50);
        q.dequeue();

        System.out.println(&quot;Queue Front : &quot; + q.front.key);
        System.out.println(&quot;Queue Rear : &quot; + q.rear.key);
    }
}

/** Realization of a FIFO queue as an adaptation of a SinglyLinkedList. */ public class
LinkedQueue&lt;E&gt; implements Queue&lt;E&gt; { private SinglyLinkedList&lt;E&gt; list = new
SinglyLinkedList&lt;&gt;( ); // an empty list public LinkedQueue( ) { } // new queue relies on the
initially empty list public int size( ) { return list.size( ); } public boolean isEmpty( ) { return
list.isEmpty( ); } public void enqueue(E element) { list.addLast(element); } public E first( ) {
return list.first( ); } public E dequeue( ) { return list.removeFirst( ); }

public String toString() {

return list.toString();

}

void concatenate(LinkedQueue&lt;E&gt; Q2) {

if (list == null)

list = Q2.list;

else {
list.addLast (Q2.list.first( ));
list.size( )= list.size( )+ Q2.list.size( );
Q2= new LinkedQueue &lt;E&gt;( );

}

}

public static void main(String[] args) {
SinglyLinked List&lt;String&gt; list = new Singly LinkedList&lt;String&gt;0;
list.addFirst(&quot;MSP&quot;);
list.addLast(&quot;ATL&quot;);
list.addLast(&quot;BOS&quot;);
list.addFirst(&quot;LAX&quot;);
System.out.println(list);
LinkedQueue&lt;Integer&gt; q1 = new LinkedQueue&lt;Integer&gt;();
q1.enqueue(10);
q1.enqueue(20);
q1.enqueue(30);
System.out.println(q1.toString();
LinkedQueue&lt;Integer&gt; q2 = new LinkedQueue&lt;Integer&gt;();
42.enqueue(40);
q2.enqueue(50); q2.enqueue(60);
System.out.println(q2.toString();
qi.concatenate(92);
System.out.println(&quot;After concatenation:&quot; + q1.toString();
}}

//Time Complexity: Time complexity of both operations enqueue() and dequeue() is O(1) as
//we only change few pointers in both operations. There is no loop in any of the operations.
