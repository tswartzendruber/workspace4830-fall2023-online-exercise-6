
public aspect TraceAspectSwartzendruber {
	
	pointcut classToTrace(): within(*App);
	
	pointcut methodToTrace(): classToTrace() && execution(* *(..));
	
	before(): methodToTrace() {
		System.out.println("[BGN] " + thisJoinPointStaticPart.getSignature() //
		+ ", " + thisJoinPointStaticPart.getSourceLocation().getLine());
	}
	
	after(): methodToTrace() {
		System.out.println("[END] " + thisJoinPointStaticPart.getSourceLocation().getFileName());
	}

}
