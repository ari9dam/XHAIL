// Generated from Clasp3.g4 by ANTLR 4.2.2

package ac.bristol.bragaglia.xhail.parsers.clasp3;

/**
 * @author stefano
 *
 */
import org.antlr.v4.runtime.Lexer;
import org.antlr.v4.runtime.CharStream;
import org.antlr.v4.runtime.Token;
import org.antlr.v4.runtime.TokenStream;
import org.antlr.v4.runtime.*;
import org.antlr.v4.runtime.atn.*;
import org.antlr.v4.runtime.dfa.DFA;
import org.antlr.v4.runtime.misc.*;

@SuppressWarnings({"all", "warnings", "unchecked", "unused", "cast"})
public class Clasp3Lexer extends Lexer {
	protected static final DFA[] _decisionToDFA;
	protected static final PredictionContextCache _sharedContextCache =
		new PredictionContextCache();
	public static final int
		T__22=1, T__21=2, T__20=3, T__19=4, T__18=5, T__17=6, T__16=7, T__15=8, 
		T__14=9, T__13=10, T__12=11, T__11=12, T__10=13, T__9=14, T__8=15, T__7=16, 
		T__6=17, T__5=18, T__4=19, T__3=20, T__2=21, T__1=22, T__0=23, BACKSLASH=24, 
		COLON=25, COMMA=26, DOT=27, DOTDOT=28, SLASH=29, PAREN_LEFT=30, PAREN_RIGHT=31, 
		SPACE=32, DRIVE=33, IDENTIFIER=34, INTEGER=35, FLOAT=36, LETTER=37, NEWLINE=38, 
		QUOTED=39, STRING=40, PLUS=41;
	public static String[] modeNames = {
		"DEFAULT_MODE"
	};

	public static final String[] tokenNames = {
		"<INVALID>",
		"'s'", "'s)'", "'CPU Time     : '", "'s Unsat: '", "'SATISFIABLE'", "'Reading from stdin'", 
		"'Reading from '", "'Solving...'", "'Calls        : '", "'s 1st Model: '", 
		"'Models       : '", "'Answer: '", "'Time         : '", "'OPTIMUM FOUND'", 
		"'Optimization : '", "'  Optimum    : no'", "'clasp version 3.'", "'  Optimal    : '", 
		"'  Optimum    : yes'", "'UNKNOWN'", "'UNSATISFIABLE'", "'s (Solving: '", 
		"'Optimization: '", "'\\'", "':'", "','", "'.'", "'..'", "'/'", "'('", 
		"')'", "' '", "DRIVE", "IDENTIFIER", "INTEGER", "FLOAT", "LETTER", "NEWLINE", 
		"QUOTED", "STRING", "'+'"
	};
	public static final String[] ruleNames = {
		"T__22", "T__21", "T__20", "T__19", "T__18", "T__17", "T__16", "T__15", 
		"T__14", "T__13", "T__12", "T__11", "T__10", "T__9", "T__8", "T__7", "T__6", 
		"T__5", "T__4", "T__3", "T__2", "T__1", "T__0", "BACKSLASH", "COLON", 
		"COMMA", "DOT", "DOTDOT", "SLASH", "PAREN_LEFT", "PAREN_RIGHT", "SPACE", 
		"DRIVE", "IDENTIFIER", "INTEGER", "FLOAT", "LETTER", "NEWLINE", "QUOTED", 
		"STRING", "PLUS", "DIGIT", "ESCAPE", "FOLLOW", "LOWER", "NONZERO", "UNDERSCORE", 
		"UPPER"
	};


	public Clasp3Lexer(CharStream input) {
		super(input);
		_interp = new LexerATNSimulator(this,_ATN,_decisionToDFA,_sharedContextCache);
	}

	@Override
	public String getGrammarFileName() { return "Clasp3.g4"; }

	@Override
	public String[] getTokenNames() { return tokenNames; }

	@Override
	public String[] getRuleNames() { return ruleNames; }

	@Override
	public String getSerializedATN() { return _serializedATN; }

	@Override
	public String[] getModeNames() { return modeNames; }

	@Override
	public ATN getATN() { return _ATN; }

	public static final String _serializedATN =
		"\3\u0430\ud6d1\u8206\uad2d\u4417\uaef1\u8d80\uaadd\2+\u020c\b\1\4\2\t"+
		"\2\4\3\t\3\4\4\t\4\4\5\t\5\4\6\t\6\4\7\t\7\4\b\t\b\4\t\t\t\4\n\t\n\4\13"+
		"\t\13\4\f\t\f\4\r\t\r\4\16\t\16\4\17\t\17\4\20\t\20\4\21\t\21\4\22\t\22"+
		"\4\23\t\23\4\24\t\24\4\25\t\25\4\26\t\26\4\27\t\27\4\30\t\30\4\31\t\31"+
		"\4\32\t\32\4\33\t\33\4\34\t\34\4\35\t\35\4\36\t\36\4\37\t\37\4 \t \4!"+
		"\t!\4\"\t\"\4#\t#\4$\t$\4%\t%\4&\t&\4\'\t\'\4(\t(\4)\t)\4*\t*\4+\t+\4"+
		",\t,\4-\t-\4.\t.\4/\t/\4\60\t\60\4\61\t\61\3\2\3\2\3\3\3\3\3\3\3\4\3\4"+
		"\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\4\3\5\3\5\3\5\3"+
		"\5\3\5\3\5\3\5\3\5\3\5\3\5\3\6\3\6\3\6\3\6\3\6\3\6\3\6\3\6\3\6\3\6\3\6"+
		"\3\6\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3\7\3"+
		"\7\3\7\3\7\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\b\3\t"+
		"\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\t\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3"+
		"\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\n\3\13\3\13\3\13\3\13\3\13\3\13\3\13"+
		"\3\13\3\13\3\13\3\13\3\13\3\13\3\13\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3"+
		"\f\3\f\3\f\3\f\3\f\3\f\3\f\3\f\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\r\3\16"+
		"\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16\3\16"+
		"\3\16\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17\3\17"+
		"\3\17\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20\3\20"+
		"\3\20\3\20\3\20\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\21"+
		"\3\21\3\21\3\21\3\21\3\21\3\21\3\21\3\22\3\22\3\22\3\22\3\22\3\22\3\22"+
		"\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\22\3\23\3\23\3\23\3\23"+
		"\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\23\3\24\3\24"+
		"\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24\3\24"+
		"\3\24\3\24\3\24\3\25\3\25\3\25\3\25\3\25\3\25\3\25\3\25\3\26\3\26\3\26"+
		"\3\26\3\26\3\26\3\26\3\26\3\26\3\26\3\26\3\26\3\26\3\26\3\27\3\27\3\27"+
		"\3\27\3\27\3\27\3\27\3\27\3\27\3\27\3\27\3\27\3\27\3\30\3\30\3\30\3\30"+
		"\3\30\3\30\3\30\3\30\3\30\3\30\3\30\3\30\3\30\3\30\3\30\3\31\3\31\3\32"+
		"\3\32\3\33\3\33\3\34\3\34\3\35\3\35\3\35\3\36\3\36\3\37\3\37\3 \3 \3!"+
		"\3!\3\"\3\"\5\"\u01ad\n\"\3\"\3\"\5\"\u01b1\n\"\3#\3#\7#\u01b5\n#\f#\16"+
		"#\u01b8\13#\3$\6$\u01bb\n$\r$\16$\u01bc\3%\6%\u01c0\n%\r%\16%\u01c1\3"+
		"%\3%\6%\u01c6\n%\r%\16%\u01c7\3&\3&\3&\3&\5&\u01ce\n&\3\'\5\'\u01d1\n"+
		"\'\3\'\3\'\3(\3(\3(\6(\u01d8\n(\r(\16(\u01d9\3(\3(\3)\3)\3)\6)\u01e1\n"+
		")\r)\16)\u01e2\3)\3)\3*\3*\3+\3+\5+\u01eb\n+\3,\3,\3,\3,\5,\u01f1\n,\3"+
		",\5,\u01f4\n,\3,\3,\3,\3,\3,\3,\3,\5,\u01fd\n,\3-\3-\3-\3-\5-\u0203\n"+
		"-\3.\3.\3/\3/\3\60\3\60\3\61\3\61\4\u01d9\u01e2\2\62\3\3\5\4\7\5\t\6\13"+
		"\7\r\b\17\t\21\n\23\13\25\f\27\r\31\16\33\17\35\20\37\21!\22#\23%\24\'"+
		"\25)\26+\27-\30/\31\61\32\63\33\65\34\67\359\36;\37= ?!A\"C#E$G%I&K\'"+
		"M(O)Q*S+U\2W\2Y\2[\2]\2_\2a\2\3\2\r\4\2))^^\4\2$$^^\3\2\62\62\b\2$$^^"+
		"ddppttvv\3\2\62\65\3\2\629\5\2\62;CHch\3\2c|\3\2\63;\3\2aa\3\2C\\\u021a"+
		"\2\3\3\2\2\2\2\5\3\2\2\2\2\7\3\2\2\2\2\t\3\2\2\2\2\13\3\2\2\2\2\r\3\2"+
		"\2\2\2\17\3\2\2\2\2\21\3\2\2\2\2\23\3\2\2\2\2\25\3\2\2\2\2\27\3\2\2\2"+
		"\2\31\3\2\2\2\2\33\3\2\2\2\2\35\3\2\2\2\2\37\3\2\2\2\2!\3\2\2\2\2#\3\2"+
		"\2\2\2%\3\2\2\2\2\'\3\2\2\2\2)\3\2\2\2\2+\3\2\2\2\2-\3\2\2\2\2/\3\2\2"+
		"\2\2\61\3\2\2\2\2\63\3\2\2\2\2\65\3\2\2\2\2\67\3\2\2\2\29\3\2\2\2\2;\3"+
		"\2\2\2\2=\3\2\2\2\2?\3\2\2\2\2A\3\2\2\2\2C\3\2\2\2\2E\3\2\2\2\2G\3\2\2"+
		"\2\2I\3\2\2\2\2K\3\2\2\2\2M\3\2\2\2\2O\3\2\2\2\2Q\3\2\2\2\2S\3\2\2\2\3"+
		"c\3\2\2\2\5e\3\2\2\2\7h\3\2\2\2\tx\3\2\2\2\13\u0082\3\2\2\2\r\u008e\3"+
		"\2\2\2\17\u00a1\3\2\2\2\21\u00af\3\2\2\2\23\u00ba\3\2\2\2\25\u00ca\3\2"+
		"\2\2\27\u00d8\3\2\2\2\31\u00e8\3\2\2\2\33\u00f1\3\2\2\2\35\u0101\3\2\2"+
		"\2\37\u010f\3\2\2\2!\u011f\3\2\2\2#\u0131\3\2\2\2%\u0142\3\2\2\2\'\u0152"+
		"\3\2\2\2)\u0165\3\2\2\2+\u016d\3\2\2\2-\u017b\3\2\2\2/\u0188\3\2\2\2\61"+
		"\u0197\3\2\2\2\63\u0199\3\2\2\2\65\u019b\3\2\2\2\67\u019d\3\2\2\29\u019f"+
		"\3\2\2\2;\u01a2\3\2\2\2=\u01a4\3\2\2\2?\u01a6\3\2\2\2A\u01a8\3\2\2\2C"+
		"\u01ac\3\2\2\2E\u01b2\3\2\2\2G\u01ba\3\2\2\2I\u01bf\3\2\2\2K\u01cd\3\2"+
		"\2\2M\u01d0\3\2\2\2O\u01d4\3\2\2\2Q\u01dd\3\2\2\2S\u01e6\3\2\2\2U\u01ea"+
		"\3\2\2\2W\u01fc\3\2\2\2Y\u0202\3\2\2\2[\u0204\3\2\2\2]\u0206\3\2\2\2_"+
		"\u0208\3\2\2\2a\u020a\3\2\2\2cd\7u\2\2d\4\3\2\2\2ef\7u\2\2fg\7+\2\2g\6"+
		"\3\2\2\2hi\7E\2\2ij\7R\2\2jk\7W\2\2kl\7\"\2\2lm\7V\2\2mn\7k\2\2no\7o\2"+
		"\2op\7g\2\2pq\7\"\2\2qr\7\"\2\2rs\7\"\2\2st\7\"\2\2tu\7\"\2\2uv\7<\2\2"+
		"vw\7\"\2\2w\b\3\2\2\2xy\7u\2\2yz\7\"\2\2z{\7W\2\2{|\7p\2\2|}\7u\2\2}~"+
		"\7c\2\2~\177\7v\2\2\177\u0080\7<\2\2\u0080\u0081\7\"\2\2\u0081\n\3\2\2"+
		"\2\u0082\u0083\7U\2\2\u0083\u0084\7C\2\2\u0084\u0085\7V\2\2\u0085\u0086"+
		"\7K\2\2\u0086\u0087\7U\2\2\u0087\u0088\7H\2\2\u0088\u0089\7K\2\2\u0089"+
		"\u008a\7C\2\2\u008a\u008b\7D\2\2\u008b\u008c\7N\2\2\u008c\u008d\7G\2\2"+
		"\u008d\f\3\2\2\2\u008e\u008f\7T\2\2\u008f\u0090\7g\2\2\u0090\u0091\7c"+
		"\2\2\u0091\u0092\7f\2\2\u0092\u0093\7k\2\2\u0093\u0094\7p\2\2\u0094\u0095"+
		"\7i\2\2\u0095\u0096\7\"\2\2\u0096\u0097\7h\2\2\u0097\u0098\7t\2\2\u0098"+
		"\u0099\7q\2\2\u0099\u009a\7o\2\2\u009a\u009b\7\"\2\2\u009b\u009c\7u\2"+
		"\2\u009c\u009d\7v\2\2\u009d\u009e\7f\2\2\u009e\u009f\7k\2\2\u009f\u00a0"+
		"\7p\2\2\u00a0\16\3\2\2\2\u00a1\u00a2\7T\2\2\u00a2\u00a3\7g\2\2\u00a3\u00a4"+
		"\7c\2\2\u00a4\u00a5\7f\2\2\u00a5\u00a6\7k\2\2\u00a6\u00a7\7p\2\2\u00a7"+
		"\u00a8\7i\2\2\u00a8\u00a9\7\"\2\2\u00a9\u00aa\7h\2\2\u00aa\u00ab\7t\2"+
		"\2\u00ab\u00ac\7q\2\2\u00ac\u00ad\7o\2\2\u00ad\u00ae\7\"\2\2\u00ae\20"+
		"\3\2\2\2\u00af\u00b0\7U\2\2\u00b0\u00b1\7q\2\2\u00b1\u00b2\7n\2\2\u00b2"+
		"\u00b3\7x\2\2\u00b3\u00b4\7k\2\2\u00b4\u00b5\7p\2\2\u00b5\u00b6\7i\2\2"+
		"\u00b6\u00b7\7\60\2\2\u00b7\u00b8\7\60\2\2\u00b8\u00b9\7\60\2\2\u00b9"+
		"\22\3\2\2\2\u00ba\u00bb\7E\2\2\u00bb\u00bc\7c\2\2\u00bc\u00bd\7n\2\2\u00bd"+
		"\u00be\7n\2\2\u00be\u00bf\7u\2\2\u00bf\u00c0\7\"\2\2\u00c0\u00c1\7\"\2"+
		"\2\u00c1\u00c2\7\"\2\2\u00c2\u00c3\7\"\2\2\u00c3\u00c4\7\"\2\2\u00c4\u00c5"+
		"\7\"\2\2\u00c5\u00c6\7\"\2\2\u00c6\u00c7\7\"\2\2\u00c7\u00c8\7<\2\2\u00c8"+
		"\u00c9\7\"\2\2\u00c9\24\3\2\2\2\u00ca\u00cb\7u\2\2\u00cb\u00cc\7\"\2\2"+
		"\u00cc\u00cd\7\63\2\2\u00cd\u00ce\7u\2\2\u00ce\u00cf\7v\2\2\u00cf\u00d0"+
		"\7\"\2\2\u00d0\u00d1\7O\2\2\u00d1\u00d2\7q\2\2\u00d2\u00d3\7f\2\2\u00d3"+
		"\u00d4\7g\2\2\u00d4\u00d5\7n\2\2\u00d5\u00d6\7<\2\2\u00d6\u00d7\7\"\2"+
		"\2\u00d7\26\3\2\2\2\u00d8\u00d9\7O\2\2\u00d9\u00da\7q\2\2\u00da\u00db"+
		"\7f\2\2\u00db\u00dc\7g\2\2\u00dc\u00dd\7n\2\2\u00dd\u00de\7u\2\2\u00de"+
		"\u00df\7\"\2\2\u00df\u00e0\7\"\2\2\u00e0\u00e1\7\"\2\2\u00e1\u00e2\7\""+
		"\2\2\u00e2\u00e3\7\"\2\2\u00e3\u00e4\7\"\2\2\u00e4\u00e5\7\"\2\2\u00e5"+
		"\u00e6\7<\2\2\u00e6\u00e7\7\"\2\2\u00e7\30\3\2\2\2\u00e8\u00e9\7C\2\2"+
		"\u00e9\u00ea\7p\2\2\u00ea\u00eb\7u\2\2\u00eb\u00ec\7y\2\2\u00ec\u00ed"+
		"\7g\2\2\u00ed\u00ee\7t\2\2\u00ee\u00ef\7<\2\2\u00ef\u00f0\7\"\2\2\u00f0"+
		"\32\3\2\2\2\u00f1\u00f2\7V\2\2\u00f2\u00f3\7k\2\2\u00f3\u00f4\7o\2\2\u00f4"+
		"\u00f5\7g\2\2\u00f5\u00f6\7\"\2\2\u00f6\u00f7\7\"\2\2\u00f7\u00f8\7\""+
		"\2\2\u00f8\u00f9\7\"\2\2\u00f9\u00fa\7\"\2\2\u00fa\u00fb\7\"\2\2\u00fb"+
		"\u00fc\7\"\2\2\u00fc\u00fd\7\"\2\2\u00fd\u00fe\7\"\2\2\u00fe\u00ff\7<"+
		"\2\2\u00ff\u0100\7\"\2\2\u0100\34\3\2\2\2\u0101\u0102\7Q\2\2\u0102\u0103"+
		"\7R\2\2\u0103\u0104\7V\2\2\u0104\u0105\7K\2\2\u0105\u0106\7O\2\2\u0106"+
		"\u0107\7W\2\2\u0107\u0108\7O\2\2\u0108\u0109\7\"\2\2\u0109\u010a\7H\2"+
		"\2\u010a\u010b\7Q\2\2\u010b\u010c\7W\2\2\u010c\u010d\7P\2\2\u010d\u010e"+
		"\7F\2\2\u010e\36\3\2\2\2\u010f\u0110\7Q\2\2\u0110\u0111\7r\2\2\u0111\u0112"+
		"\7v\2\2\u0112\u0113\7k\2\2\u0113\u0114\7o\2\2\u0114\u0115\7k\2\2\u0115"+
		"\u0116\7|\2\2\u0116\u0117\7c\2\2\u0117\u0118\7v\2\2\u0118\u0119\7k\2\2"+
		"\u0119\u011a\7q\2\2\u011a\u011b\7p\2\2\u011b\u011c\7\"\2\2\u011c\u011d"+
		"\7<\2\2\u011d\u011e\7\"\2\2\u011e \3\2\2\2\u011f\u0120\7\"\2\2\u0120\u0121"+
		"\7\"\2\2\u0121\u0122\7Q\2\2\u0122\u0123\7r\2\2\u0123\u0124\7v\2\2\u0124"+
		"\u0125\7k\2\2\u0125\u0126\7o\2\2\u0126\u0127\7w\2\2\u0127\u0128\7o\2\2"+
		"\u0128\u0129\7\"\2\2\u0129\u012a\7\"\2\2\u012a\u012b\7\"\2\2\u012b\u012c"+
		"\7\"\2\2\u012c\u012d\7<\2\2\u012d\u012e\7\"\2\2\u012e\u012f\7p\2\2\u012f"+
		"\u0130\7q\2\2\u0130\"\3\2\2\2\u0131\u0132\7e\2\2\u0132\u0133\7n\2\2\u0133"+
		"\u0134\7c\2\2\u0134\u0135\7u\2\2\u0135\u0136\7r\2\2\u0136\u0137\7\"\2"+
		"\2\u0137\u0138\7x\2\2\u0138\u0139\7g\2\2\u0139\u013a\7t\2\2\u013a\u013b"+
		"\7u\2\2\u013b\u013c\7k\2\2\u013c\u013d\7q\2\2\u013d\u013e\7p\2\2\u013e"+
		"\u013f\7\"\2\2\u013f\u0140\7\65\2\2\u0140\u0141\7\60\2\2\u0141$\3\2\2"+
		"\2\u0142\u0143\7\"\2\2\u0143\u0144\7\"\2\2\u0144\u0145\7Q\2\2\u0145\u0146"+
		"\7r\2\2\u0146\u0147\7v\2\2\u0147\u0148\7k\2\2\u0148\u0149\7o\2\2\u0149"+
		"\u014a\7c\2\2\u014a\u014b\7n\2\2\u014b\u014c\7\"\2\2\u014c\u014d\7\"\2"+
		"\2\u014d\u014e\7\"\2\2\u014e\u014f\7\"\2\2\u014f\u0150\7<\2\2\u0150\u0151"+
		"\7\"\2\2\u0151&\3\2\2\2\u0152\u0153\7\"\2\2\u0153\u0154\7\"\2\2\u0154"+
		"\u0155\7Q\2\2\u0155\u0156\7r\2\2\u0156\u0157\7v\2\2\u0157\u0158\7k\2\2"+
		"\u0158\u0159\7o\2\2\u0159\u015a\7w\2\2\u015a\u015b\7o\2\2\u015b\u015c"+
		"\7\"\2\2\u015c\u015d\7\"\2\2\u015d\u015e\7\"\2\2\u015e\u015f\7\"\2\2\u015f"+
		"\u0160\7<\2\2\u0160\u0161\7\"\2\2\u0161\u0162\7{\2\2\u0162\u0163\7g\2"+
		"\2\u0163\u0164\7u\2\2\u0164(\3\2\2\2\u0165\u0166\7W\2\2\u0166\u0167\7"+
		"P\2\2\u0167\u0168\7M\2\2\u0168\u0169\7P\2\2\u0169\u016a\7Q\2\2\u016a\u016b"+
		"\7Y\2\2\u016b\u016c\7P\2\2\u016c*\3\2\2\2\u016d\u016e\7W\2\2\u016e\u016f"+
		"\7P\2\2\u016f\u0170\7U\2\2\u0170\u0171\7C\2\2\u0171\u0172\7V\2\2\u0172"+
		"\u0173\7K\2\2\u0173\u0174\7U\2\2\u0174\u0175\7H\2\2\u0175\u0176\7K\2\2"+
		"\u0176\u0177\7C\2\2\u0177\u0178\7D\2\2\u0178\u0179\7N\2\2\u0179\u017a"+
		"\7G\2\2\u017a,\3\2\2\2\u017b\u017c\7u\2\2\u017c\u017d\7\"\2\2\u017d\u017e"+
		"\7*\2\2\u017e\u017f\7U\2\2\u017f\u0180\7q\2\2\u0180\u0181\7n\2\2\u0181"+
		"\u0182\7x\2\2\u0182\u0183\7k\2\2\u0183\u0184\7p\2\2\u0184\u0185\7i\2\2"+
		"\u0185\u0186\7<\2\2\u0186\u0187\7\"\2\2\u0187.\3\2\2\2\u0188\u0189\7Q"+
		"\2\2\u0189\u018a\7r\2\2\u018a\u018b\7v\2\2\u018b\u018c\7k\2\2\u018c\u018d"+
		"\7o\2\2\u018d\u018e\7k\2\2\u018e\u018f\7|\2\2\u018f\u0190\7c\2\2\u0190"+
		"\u0191\7v\2\2\u0191\u0192\7k\2\2\u0192\u0193\7q\2\2\u0193\u0194\7p\2\2"+
		"\u0194\u0195\7<\2\2\u0195\u0196\7\"\2\2\u0196\60\3\2\2\2\u0197\u0198\7"+
		"^\2\2\u0198\62\3\2\2\2\u0199\u019a\7<\2\2\u019a\64\3\2\2\2\u019b\u019c"+
		"\7.\2\2\u019c\66\3\2\2\2\u019d\u019e\7\60\2\2\u019e8\3\2\2\2\u019f\u01a0"+
		"\7\60\2\2\u01a0\u01a1\7\60\2\2\u01a1:\3\2\2\2\u01a2\u01a3\7\61\2\2\u01a3"+
		"<\3\2\2\2\u01a4\u01a5\7*\2\2\u01a5>\3\2\2\2\u01a6\u01a7\7+\2\2\u01a7@"+
		"\3\2\2\2\u01a8\u01a9\7\"\2\2\u01a9B\3\2\2\2\u01aa\u01ad\5[.\2\u01ab\u01ad"+
		"\5a\61\2\u01ac\u01aa\3\2\2\2\u01ac\u01ab\3\2\2\2\u01ad\u01ae\3\2\2\2\u01ae"+
		"\u01b0\5\63\32\2\u01af\u01b1\5\61\31\2\u01b0\u01af\3\2\2\2\u01b0\u01b1"+
		"\3\2\2\2\u01b1D\3\2\2\2\u01b2\u01b6\5[.\2\u01b3\u01b5\5Y-\2\u01b4\u01b3"+
		"\3\2\2\2\u01b5\u01b8\3\2\2\2\u01b6\u01b4\3\2\2\2\u01b6\u01b7\3\2\2\2\u01b7"+
		"F\3\2\2\2\u01b8\u01b6\3\2\2\2\u01b9\u01bb\5U+\2\u01ba\u01b9\3\2\2\2\u01bb"+
		"\u01bc\3\2\2\2\u01bc\u01ba\3\2\2\2\u01bc\u01bd\3\2\2\2\u01bdH\3\2\2\2"+
		"\u01be\u01c0\5U+\2\u01bf\u01be\3\2\2\2\u01c0\u01c1\3\2\2\2\u01c1\u01bf"+
		"\3\2\2\2\u01c1\u01c2\3\2\2\2\u01c2\u01c3\3\2\2\2\u01c3\u01c5\5\67\34\2"+
		"\u01c4\u01c6\5U+\2\u01c5\u01c4\3\2\2\2\u01c6\u01c7\3\2\2\2\u01c7\u01c5"+
		"\3\2\2\2\u01c7\u01c8\3\2\2\2\u01c8J\3\2\2\2\u01c9\u01ce\5[.\2\u01ca\u01ce"+
		"\5a\61\2\u01cb\u01ce\5U+\2\u01cc\u01ce\5A!\2\u01cd\u01c9\3\2\2\2\u01cd"+
		"\u01ca\3\2\2\2\u01cd\u01cb\3\2\2\2\u01cd\u01cc\3\2\2\2\u01ceL\3\2\2\2"+
		"\u01cf\u01d1\7\17\2\2\u01d0\u01cf\3\2\2\2\u01d0\u01d1\3\2\2\2\u01d1\u01d2"+
		"\3\2\2\2\u01d2\u01d3\7\f\2\2\u01d3N\3\2\2\2\u01d4\u01d7\7)\2\2\u01d5\u01d8"+
		"\n\2\2\2\u01d6\u01d8\5W,\2\u01d7\u01d5\3\2\2\2\u01d7\u01d6\3\2\2\2\u01d8"+
		"\u01d9\3\2\2\2\u01d9\u01da\3\2\2\2\u01d9\u01d7\3\2\2\2\u01da\u01db\3\2"+
		"\2\2\u01db\u01dc\7)\2\2\u01dcP\3\2\2\2\u01dd\u01e0\7$\2\2\u01de\u01e1"+
		"\n\3\2\2\u01df\u01e1\5W,\2\u01e0\u01de\3\2\2\2\u01e0\u01df\3\2\2\2\u01e1"+
		"\u01e2\3\2\2\2\u01e2\u01e3\3\2\2\2\u01e2\u01e0\3\2\2\2\u01e3\u01e4\3\2"+
		"\2\2\u01e4\u01e5\7$\2\2\u01e5R\3\2\2\2\u01e6\u01e7\7-\2\2\u01e7T\3\2\2"+
		"\2\u01e8\u01eb\t\4\2\2\u01e9\u01eb\5]/\2\u01ea\u01e8\3\2\2\2\u01ea\u01e9"+
		"\3\2\2\2\u01ebV\3\2\2\2\u01ec\u01ed\7^\2\2\u01ed\u01fd\t\5\2\2\u01ee\u01f0"+
		"\7^\2\2\u01ef\u01f1\t\6\2\2\u01f0\u01ef\3\2\2\2\u01f0\u01f1\3\2\2\2\u01f1"+
		"\u01f3\3\2\2\2\u01f2\u01f4\t\7\2\2\u01f3\u01f2\3\2\2\2\u01f3\u01f4\3\2"+
		"\2\2\u01f4\u01f5\3\2\2\2\u01f5\u01fd\t\7\2\2\u01f6\u01f7\7^\2\2\u01f7"+
		"\u01f8\7w\2\2\u01f8\u01f9\t\b\2\2\u01f9\u01fa\t\b\2\2\u01fa\u01fb\t\b"+
		"\2\2\u01fb\u01fd\t\b\2\2\u01fc\u01ec\3\2\2\2\u01fc\u01ee\3\2\2\2\u01fc"+
		"\u01f6\3\2\2\2\u01fdX\3\2\2\2\u01fe\u0203\5[.\2\u01ff\u0203\5a\61\2\u0200"+
		"\u0203\5U+\2\u0201\u0203\5_\60\2\u0202\u01fe\3\2\2\2\u0202\u01ff\3\2\2"+
		"\2\u0202\u0200\3\2\2\2\u0202\u0201\3\2\2\2\u0203Z\3\2\2\2\u0204\u0205"+
		"\t\t\2\2\u0205\\\3\2\2\2\u0206\u0207\t\n\2\2\u0207^\3\2\2\2\u0208\u0209"+
		"\t\13\2\2\u0209`\3\2\2\2\u020a\u020b\t\f\2\2\u020bb\3\2\2\2\24\2\u01ac"+
		"\u01b0\u01b6\u01bc\u01c1\u01c7\u01cd\u01d0\u01d7\u01d9\u01e0\u01e2\u01ea"+
		"\u01f0\u01f3\u01fc\u0202\2";
	public static final ATN _ATN =
		new ATNDeserializer().deserialize(_serializedATN.toCharArray());
	static {
		_decisionToDFA = new DFA[_ATN.getNumberOfDecisions()];
		for (int i = 0; i < _ATN.getNumberOfDecisions(); i++) {
			_decisionToDFA[i] = new DFA(_ATN.getDecisionState(i), i);
		}
	}
}