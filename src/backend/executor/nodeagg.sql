--
select avg(a) from test_a group by a;

-- parse
{QUERY :commandType 1 :querySource 0 :canSetTag true :utilityStmt <>
	:resultRelation 0 :hasAggs true :hasWindowFuncs false :hasTargetSRFs false
	:hasSubLinks false :hasDistinctOn false :hasRecursive false :hasModifyingCTE
	false :hasForUpdate false :hasRowSecurity false :cteList <> 
    
:rtable ({RTE
	:alias <> :eref {ALIAS :aliasname test_a :colnames ("a" "b" "c" "d")} :rtekind
	0 :relid 16543 :relkind r :rellockmode 1 :tablesample <> :lateral false :inh
	false :inFromCl true :requiredPerms 2 :checkAsUser 0 :selectedCols (b 8)
	:insertedCols (b) :updatedCols (b) :extraUpdatedCols (b) :securityQuals <>})

:jointree {FROMEXPR :fromlist ({RANGETBLREF :rtindex 1}) :quals <>}
	
:targetList (
    -- avg(a)
    {TARGETENTRY :expr {AGGREF :aggfnoid 2101 :aggtype 1700
	:aggcollid 0 :inputcollid 0 :aggtranstype 1016 :aggargtypes (o 23)
	:aggdirectargs <> :args ({TARGETENTRY :expr {VAR :varno 1 :varattno 1 :vartype
	23 :vartypmod -1 :varcollid 0 :varlevelsup 0 :varnoold 1 :varoattno 1
	:location 11} :resno 1 :resname <> :ressortgroupref 0 :resorigtbl 0
	:resorigcol 0 :resjunk false}) :aggorder <> :aggdistinct <> :aggfilter <>
	:aggstar false :aggvariadic false :aggkind n :agglevelsup 0 :aggsplit 0
	:location 7} :resno 1 :resname avg :ressortgroupref 0 :resorigtbl 0
	:resorigcol 0 :resjunk false}
    -- a
    {TARGETENTRY :expr {VAR :varno 1 :varattno 1
	:vartype 23 :vartypmod -1 :varcollid 0 :varlevelsup 0 :varnoold 1 :varoattno 1
	:location 35} :resno 2 :resname <> :ressortgroupref 1 :resorigtbl 0
	:resorigcol 0 :resjunk true}) 

:override 0 :onConflict <> :returningList <>

-- group by a
:groupClause ({SORTGROUPCLAUSE :tleSortGroupRef 1 :eqop 96 :sortop 97
	:nulls_first false :hashable true})

:groupingSets <> :havingQual <>
	:windowClause <> :distinctClause <> :sortClause <> :limitOffset <> :limitCount
	<> :rowMarks <> :setOperations <> :constraintDeps <> :withCheckOptions <>
	:stmt_location 0 :stmt_len 36}


-- nodeagg 
{AGG :startup_cost 37.75 :total_cost 40.25 :plan_rows 200 :plan_width 36
	:parallel_aware false :parallel_safe true :plan_node_id 0 

:targetlist
	({TARGETENTRY :expr {AGGREF :aggfnoid 2101 :aggtype 1700 :aggcollid 0
	:inputcollid 0 :aggtranstype 1016 :aggargtypes (o 23) :aggdirectargs <> 
    :args ({TARGETENTRY :expr {VAR :varno 65001 :varattno 1 :vartype 23 
        :vartypmod -1 :varcollid 0 :varlevelsup 0 :varnoold 1 :varoattno 1 
        :location 11} :resno 1 :resname <> :ressortgroupref 0 :resorigtbl 0 
        :resorigcol 0 :resjunk false})
	:aggorder <> :aggdistinct <> :aggfilter <> :aggstar false :aggvariadic false
	:aggkind n :agglevelsup 0 :aggsplit 0 :location 7} :resno 1 :resname avg
	:ressortgroupref 0 :resorigtbl 0 :resorigcol 0 :resjunk false} 
    
    {TARGETENTRY :expr {VAR :varno 65001 :varattno 1 :vartype 23 :vartypmod -1 
    :varcollid 0 :varlevelsup 0 :varnoold 0 :varoattno 0 :location -1} :resno 2 
    :resname <> :ressortgroupref 1 :resorigtbl 0 :resorigcol 0 :resjunk true})
 
:qual <>
	
:lefttree {SEQSCAN :startup_cost 0.00 :total_cost 28.50 :plan_rows 1850
	:plan_width 4 :parallel_aware false :parallel_safe true :plan_node_id 1
	
    :targetlist ({TARGETENTRY :expr {VAR :varno 1 :varattno 1 :vartype 23
	:vartypmod -1 :varcollid 0 :varlevelsup 0 :varnoold 1 :varoattno 1 :location
	-1} :resno 1 :resname <> :ressortgroupref 1 :resorigtbl 0 :resorigcol 0
	:resjunk false} {TARGETENTRY :expr {VAR :varno 1 :varattno 2 :vartype 23
	:vartypmod -1 :varcollid 0 :varlevelsup 0 :varnoold 1 :varoattno 2 :location
	-1} :resno 2 :resname <> :ressortgroupref 0 :resorigtbl 0 :resorigcol 0
	:resjunk false} {TARGETENTRY :expr {VAR :varno 1 :varattno 3 :vartype 23
	:vartypmod -1 :varcollid 0 :varlevelsup 0 :varnoold 1 :varoattno 3 :location
	-1} :resno 3 :resname <> :ressortgroupref 0 :resorigtbl 0 :resorigcol 0
	:resjunk false} {TARGETENTRY :expr {VAR :varno 1 :varattno 4 :vartype 23
	:vartypmod -1 :varcollid 0 :varlevelsup 0 :varnoold 1 :varoattno 4 :location
	-1} :resno 4 :resname <> :ressortgroupref 0 :resorigtbl 0 :resorigcol 0
	:resjunk false}) :qual <> :lefttree <> :righttree <> :initPlan <> :extParam
	(b) :allParam (b) :scanrelid 1}
     
:righttree <> :initPlan <> :extParam (b)
:allParam (b) :aggstrategy 2 :aggsplit 0 :numCols 1 :grpColIdx  1
:grpOperators  96 :grpCollations  0 :numGroups 200 :aggParams (b)
:groupingSets <> :chain <>}

