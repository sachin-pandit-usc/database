/*******************************************************/
/* Bonus Query1 */

g = TinkerGraph.open().traversal()

g.addV(id,'CS420').addE('prerequisite').to(g.addV(id,'CS220')).outV().addE('corequisite').to(g.V('CS220')).inV().addE('prerequisite').to(g.addV(id,'CS201')).inV().addE('prerequisite').to(g.addV(id,'CS101')).addV(id,'CS334').addE('prerequisite').to(g.V('CS201')).addV(id,'CS681').addE('prerequisite').to(g.V('CS334')).addV(id,'CS400').addE('prerequisite').to(g.V('CS334')).addV(id,'CS526').addE('prerequisite').to(g.V('CS400')).outV().addE('corequisite').to(g.V('CS400'))

/* Query1 Explanation:
The basic idea here is to create a tinkerpop graph, and using the instance of that graph we need to add 8 vertices and 9 edges.

First create a graph instance named "g"  using a traversal source, then create a vertex using the command addV(), and add an edge between the nodes using the command addE(). To traverse out of a vertex use outV(), then add an edge, and to reach neighbouring node we use inV(). The same step is repeated for each vertex and edge addition.
/*******************************************************/





/*******************************************************/
/* Bonus query2 */
g.V().as('a').in('corequisite').as('b').out('prerequisite').select('b', 'a')

/* Explanation same as the one for query2 in "assignment3.sql" document */
/*******************************************************/






/*******************************************************/
/* Bonus query3 */
/* Replace CS526 with required node */
g.V('CS526').repeat(out('prerequisite')).emit()

/* Explanation same as the one for query3 in "assignment3.sql" document */
/*******************************************************/






/*******************************************************/
/* Bonus query4 */
/* Replace CS101 with required node */
g.V('CS101').repeat(__.in()).emit().path().count(local).max()

/* Explanation same as the one for query4 in "assignment3.sql" document */
/*******************************************************/
