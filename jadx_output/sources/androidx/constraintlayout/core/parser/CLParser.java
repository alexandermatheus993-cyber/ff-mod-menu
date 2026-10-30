package androidx.constraintlayout.core.parser;

/* JADX INFO: loaded from: classes40.dex */
public class CLParser {
    static boolean DEBUG = false;
    private boolean hasComment = false;
    private int lineNumber;
    private String mContent;

    enum TYPE {
        UNKNOWN,
        OBJECT,
        ARRAY,
        NUMBER,
        STRING,
        KEY,
        TOKEN
    }

    public static CLObject parse(String string) throws CLParsingException {
        return new CLParser(string).parse();
    }

    public CLParser(String content) {
        this.mContent = content;
    }

    /* JADX WARN: Code duplicated, block: B:121:0x0055 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:122:0x00d3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:25:0x0058  */
    /* JADX WARN: Code duplicated, block: B:27:0x005e  */
    /* JADX WARN: Code duplicated, block: B:28:0x0068  */
    /* JADX WARN: Code duplicated, block: B:30:0x006e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x0070  */
    /* JADX WARN: Code duplicated, block: B:32:0x007c  */
    /* JADX WARN: Code duplicated, block: B:33:0x0086  */
    /* JADX WARN: Code duplicated, block: B:35:0x008c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:36:0x008e  */
    /* JADX WARN: Code duplicated, block: B:37:0x009a  */
    /* JADX WARN: Code duplicated, block: B:38:0x00a4  */
    /* JADX WARN: Code duplicated, block: B:40:0x00aa  */
    /* JADX WARN: Code duplicated, block: B:42:0x00b1  */
    /* JADX WARN: Code duplicated, block: B:44:0x00c3  */
    /* JADX WARN: Code duplicated, block: B:46:0x00c7  */
    /* JADX WARN: Code duplicated, block: B:51:0x00f8  */
    /* JADX WARN: Code duplicated, block: B:69:0x012b  */
    /* JADX WARN: Code duplicated, block: B:84:0x0148  */
    /* JADX WARN: Code duplicated, block: B:87:0x0152 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:88:0x0154  */
    /* JADX WARN: Code duplicated, block: B:90:0x0162  */
    /* JADX WARN: Code duplicated, block: B:91:0x016d  */
    public CLObject parse() throws CLParsingException {
        char c;
        char ck;
        CLToken token;
        char[] content = this.mContent.toCharArray();
        int length = content.length;
        int i = 1;
        this.lineNumber = 1;
        int startIndex = -1;
        int i2 = 0;
        while (true) {
            c = '\n';
            if (i2 >= length) {
                break;
            }
            char c2 = content[i2];
            if (c2 == '{') {
                startIndex = i2;
                break;
            }
            if (c2 == '\n') {
                this.lineNumber++;
            }
            i2++;
        }
        if (startIndex == -1) {
            throw new CLParsingException("invalid json content", null);
        }
        CLObject root = CLObject.allocate(content);
        root.setLine(this.lineNumber);
        root.setStart(startIndex);
        CLElement currentElement = root;
        int i3 = startIndex + 1;
        while (i3 < length) {
            char c3 = content[i3];
            if (c3 == c) {
                this.lineNumber += i;
            }
            if (this.hasComment) {
                if (c3 == c) {
                    this.hasComment = false;
                    if (currentElement == null) {
                        break;
                        break;
                    }
                    if (currentElement.isDone()) {
                        currentElement = getNextJsonElement(i3, c3, currentElement, content);
                        startIndex = startIndex;
                    } else if (currentElement instanceof CLObject) {
                        if (c3 == '}') {
                            currentElement.setEnd(i3 - 1);
                            startIndex = startIndex;
                        } else {
                            currentElement = getNextJsonElement(i3, c3, currentElement, content);
                            startIndex = startIndex;
                        }
                    } else if (currentElement instanceof CLArray) {
                        if (c3 == ']') {
                            currentElement.setEnd(i3 - 1);
                            startIndex = startIndex;
                        } else {
                            currentElement = getNextJsonElement(i3, c3, currentElement, content);
                            startIndex = startIndex;
                        }
                    } else if (currentElement instanceof CLString) {
                        if (content[(int) currentElement.start] == c3) {
                            currentElement.setStart(currentElement.start + 1);
                            currentElement.setEnd(i3 - 1);
                        }
                        startIndex = startIndex;
                    } else {
                        if (currentElement instanceof CLToken) {
                            token = (CLToken) currentElement;
                            if (!token.validate(c3, i3)) {
                                throw new CLParsingException("parsing incorrect token " + token.content() + " at line " + this.lineNumber, token);
                            }
                        }
                        if (!(currentElement instanceof CLKey)) {
                            currentElement.setStart(currentElement.start + 1);
                            currentElement.setEnd(i3 - 1);
                        } else {
                            currentElement.setStart(currentElement.start + 1);
                            currentElement.setEnd(i3 - 1);
                        }
                        if (currentElement.isDone()) {
                            if (c3 == 125) {
                                currentElement.setEnd(i3 - 1);
                                if (c3 != 125) {
                                    currentElement = currentElement.getContainer();
                                    currentElement.setEnd(i3 - 1);
                                    if (currentElement instanceof CLKey) {
                                        currentElement = currentElement.getContainer();
                                        currentElement.setEnd(i3 - 1);
                                    }
                                } else {
                                    currentElement = currentElement.getContainer();
                                    currentElement.setEnd(i3 - 1);
                                    if (currentElement instanceof CLKey) {
                                        currentElement = currentElement.getContainer();
                                        currentElement.setEnd(i3 - 1);
                                    }
                                }
                            } else {
                                currentElement.setEnd(i3 - 1);
                                if (c3 != 125) {
                                    currentElement = currentElement.getContainer();
                                    currentElement.setEnd(i3 - 1);
                                    if (currentElement instanceof CLKey) {
                                        currentElement = currentElement.getContainer();
                                        currentElement.setEnd(i3 - 1);
                                    }
                                } else {
                                    currentElement = currentElement.getContainer();
                                    currentElement.setEnd(i3 - 1);
                                    if (currentElement instanceof CLKey) {
                                        currentElement = currentElement.getContainer();
                                        currentElement.setEnd(i3 - 1);
                                    }
                                }
                            }
                        }
                    }
                    if (!currentElement.isDone()) {
                    }
                } else {
                    startIndex = startIndex;
                }
            } else {
                if (currentElement == null) {
                    break;
                }
                if (currentElement.isDone()) {
                    currentElement = getNextJsonElement(i3, c3, currentElement, content);
                    startIndex = startIndex;
                } else if (currentElement instanceof CLObject) {
                    if (c3 == '}') {
                        currentElement.setEnd(i3 - 1);
                        startIndex = startIndex;
                    } else {
                        currentElement = getNextJsonElement(i3, c3, currentElement, content);
                        startIndex = startIndex;
                    }
                } else if (currentElement instanceof CLArray) {
                    if (c3 == ']') {
                        currentElement.setEnd(i3 - 1);
                        startIndex = startIndex;
                    } else {
                        currentElement = getNextJsonElement(i3, c3, currentElement, content);
                        startIndex = startIndex;
                    }
                } else if (currentElement instanceof CLString) {
                    if (content[(int) currentElement.start] == c3) {
                        currentElement.setStart(currentElement.start + 1);
                        currentElement.setEnd(i3 - 1);
                    }
                    startIndex = startIndex;
                } else {
                    if (currentElement instanceof CLToken) {
                        token = (CLToken) currentElement;
                        if (!token.validate(c3, i3)) {
                            throw new CLParsingException("parsing incorrect token " + token.content() + " at line " + this.lineNumber, token);
                        }
                    }
                    if ((!(currentElement instanceof CLKey) || (currentElement instanceof CLString)) && (((ck = content[(int) currentElement.start]) == '\'' || ck == '\"') && ck == c3)) {
                        currentElement.setStart(currentElement.start + 1);
                        currentElement.setEnd(i3 - 1);
                    }
                    if (currentElement.isDone()) {
                        if (c3 == 125 && c3 != 93 && c3 != 44 && c3 != 32 && c3 != 9 && c3 != 13) {
                            if (c3 == 10 || c3 == ':') {
                            }
                        }
                        currentElement.setEnd(i3 - 1);
                        if (c3 != 125 || c3 == 93) {
                            currentElement = currentElement.getContainer();
                            currentElement.setEnd(i3 - 1);
                            if (currentElement instanceof CLKey) {
                                currentElement = currentElement.getContainer();
                                currentElement.setEnd(i3 - 1);
                            }
                        }
                    }
                }
                if (!currentElement.isDone() && (!(currentElement instanceof CLKey) || ((CLKey) currentElement).mElements.size() > 0)) {
                    currentElement = currentElement.getContainer();
                }
            }
            i3++;
            startIndex = startIndex;
            i = 1;
            c = '\n';
        }
        while (currentElement != null && !currentElement.isDone()) {
            if (currentElement instanceof CLString) {
                currentElement.setStart(((int) currentElement.start) + 1);
            }
            currentElement.setEnd(length - 1);
            currentElement = currentElement.getContainer();
        }
        if (DEBUG) {
            System.out.println("Root: " + root.toJSON());
        }
        return root;
    }

    private CLElement getNextJsonElement(int position, char c, CLElement currentElement, char[] content) throws CLParsingException {
        switch (c) {
            case '\t':
            case '\n':
            case '\r':
            case ' ':
            case ',':
            case ':':
                return currentElement;
            case '\"':
            case '\'':
                if (currentElement instanceof CLObject) {
                    return createElement(currentElement, position, TYPE.KEY, true, content);
                }
                return createElement(currentElement, position, TYPE.STRING, true, content);
            case '+':
            case '-':
            case '.':
            case '0':
            case '1':
            case '2':
            case '3':
            case '4':
            case '5':
            case '6':
            case '7':
            case '8':
            case '9':
                return createElement(currentElement, position, TYPE.NUMBER, true, content);
            case '/':
                if (position + 1 < content.length && content[position + 1] == '/') {
                    this.hasComment = true;
                    return currentElement;
                }
                return currentElement;
            case '[':
                return createElement(currentElement, position, TYPE.ARRAY, true, content);
            case ']':
            case '}':
                currentElement.setEnd(position - 1);
                CLElement currentElement2 = currentElement.getContainer();
                currentElement2.setEnd(position);
                return currentElement2;
            case '{':
                return createElement(currentElement, position, TYPE.OBJECT, true, content);
            default:
                if ((currentElement instanceof CLContainer) && !(currentElement instanceof CLObject)) {
                    CLElement currentElement3 = createElement(currentElement, position, TYPE.TOKEN, true, content);
                    CLToken token = (CLToken) currentElement3;
                    if (!token.validate(c, position)) {
                        throw new CLParsingException("incorrect token <" + c + "> at line " + this.lineNumber, token);
                    }
                    return currentElement3;
                }
                return createElement(currentElement, position, TYPE.KEY, true, content);
        }
    }

    private CLElement createElement(CLElement currentElement, int position, TYPE type, boolean applyStart, char[] content) {
        CLElement newElement = null;
        if (DEBUG) {
            System.out.println("CREATE " + type + " at " + content[position]);
        }
        switch (AnonymousClass1.$SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[type.ordinal()]) {
            case 1:
                newElement = CLObject.allocate(content);
                position++;
                break;
            case 2:
                newElement = CLArray.allocate(content);
                position++;
                break;
            case 3:
                newElement = CLString.allocate(content);
                break;
            case 4:
                newElement = CLNumber.allocate(content);
                break;
            case 5:
                newElement = CLKey.allocate(content);
                break;
            case 6:
                newElement = CLToken.allocate(content);
                break;
        }
        if (newElement == null) {
            return null;
        }
        newElement.setLine(this.lineNumber);
        if (applyStart) {
            newElement.setStart(position);
        }
        if (currentElement instanceof CLContainer) {
            CLContainer container = (CLContainer) currentElement;
            newElement.setContainer(container);
        }
        return newElement;
    }

    /* JADX INFO: renamed from: androidx.constraintlayout.core.parser.CLParser$1, reason: invalid class name */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE;

        static {
            int[] iArr = new int[TYPE.values().length];
            $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE = iArr;
            try {
                iArr[TYPE.OBJECT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[TYPE.ARRAY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[TYPE.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[TYPE.NUMBER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[TYPE.KEY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$androidx$constraintlayout$core$parser$CLParser$TYPE[TYPE.TOKEN.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }
}
