.class public enum Lcom/mopub/mraid/MraidJavascriptCommand;
.super Ljava/lang/Enum;
.source "MraidJavascriptCommand.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/mraid/MraidJavascriptCommand;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum CLOSE:Lcom/mopub/mraid/MraidJavascriptCommand;

.field public static final enum CREATE_CALENDAR_EVENT:Lcom/mopub/mraid/MraidJavascriptCommand;

.field public static final enum EXPAND:Lcom/mopub/mraid/MraidJavascriptCommand;

.field public static final enum OPEN:Lcom/mopub/mraid/MraidJavascriptCommand;

.field public static final enum PLAY_VIDEO:Lcom/mopub/mraid/MraidJavascriptCommand;

.field public static final enum RESIZE:Lcom/mopub/mraid/MraidJavascriptCommand;

.field public static final enum SET_ORIENTATION_PROPERTIES:Lcom/mopub/mraid/MraidJavascriptCommand;

.field public static final enum STORE_PICTURE:Lcom/mopub/mraid/MraidJavascriptCommand;

.field public static final enum UNSPECIFIED:Lcom/mopub/mraid/MraidJavascriptCommand;

.field public static final enum USE_CUSTOM_CLOSE:Lcom/mopub/mraid/MraidJavascriptCommand;

.field private static final synthetic b:[Lcom/mopub/mraid/MraidJavascriptCommand;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 6
    new-instance v0, Lcom/mopub/mraid/MraidJavascriptCommand;

    const-string v1, "CLOSE"

    const-string v2, "close"

    invoke-direct {v0, v1, v4, v2}, Lcom/mopub/mraid/MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->CLOSE:Lcom/mopub/mraid/MraidJavascriptCommand;

    .line 7
    new-instance v0, Lcom/mopub/mraid/MraidJavascriptCommand$1;

    const-string v1, "EXPAND"

    const-string v2, "expand"

    invoke-direct {v0, v1, v5, v2}, Lcom/mopub/mraid/MraidJavascriptCommand$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->EXPAND:Lcom/mopub/mraid/MraidJavascriptCommand;

    .line 13
    new-instance v0, Lcom/mopub/mraid/MraidJavascriptCommand;

    const-string v1, "USE_CUSTOM_CLOSE"

    const-string v2, "usecustomclose"

    invoke-direct {v0, v1, v6, v2}, Lcom/mopub/mraid/MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->USE_CUSTOM_CLOSE:Lcom/mopub/mraid/MraidJavascriptCommand;

    .line 14
    new-instance v0, Lcom/mopub/mraid/MraidJavascriptCommand$2;

    const-string v1, "OPEN"

    const-string v2, "open"

    invoke-direct {v0, v1, v7, v2}, Lcom/mopub/mraid/MraidJavascriptCommand$2;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->OPEN:Lcom/mopub/mraid/MraidJavascriptCommand;

    .line 20
    new-instance v0, Lcom/mopub/mraid/MraidJavascriptCommand$3;

    const-string v1, "RESIZE"

    const-string v2, "resize"

    invoke-direct {v0, v1, v8, v2}, Lcom/mopub/mraid/MraidJavascriptCommand$3;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->RESIZE:Lcom/mopub/mraid/MraidJavascriptCommand;

    .line 26
    new-instance v0, Lcom/mopub/mraid/MraidJavascriptCommand;

    const-string v1, "SET_ORIENTATION_PROPERTIES"

    const/4 v2, 0x5

    const-string v3, "setOrientationProperties"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mraid/MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->SET_ORIENTATION_PROPERTIES:Lcom/mopub/mraid/MraidJavascriptCommand;

    .line 27
    new-instance v0, Lcom/mopub/mraid/MraidJavascriptCommand$4;

    const-string v1, "PLAY_VIDEO"

    const/4 v2, 0x6

    const-string v3, "playVideo"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mraid/MraidJavascriptCommand$4;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->PLAY_VIDEO:Lcom/mopub/mraid/MraidJavascriptCommand;

    .line 33
    new-instance v0, Lcom/mopub/mraid/MraidJavascriptCommand$5;

    const-string v1, "STORE_PICTURE"

    const/4 v2, 0x7

    const-string v3, "storePicture"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mraid/MraidJavascriptCommand$5;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->STORE_PICTURE:Lcom/mopub/mraid/MraidJavascriptCommand;

    .line 39
    new-instance v0, Lcom/mopub/mraid/MraidJavascriptCommand$6;

    const-string v1, "CREATE_CALENDAR_EVENT"

    const/16 v2, 0x8

    const-string v3, "createCalendarEvent"

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mraid/MraidJavascriptCommand$6;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->CREATE_CALENDAR_EVENT:Lcom/mopub/mraid/MraidJavascriptCommand;

    .line 45
    new-instance v0, Lcom/mopub/mraid/MraidJavascriptCommand;

    const-string v1, "UNSPECIFIED"

    const/16 v2, 0x9

    const-string v3, ""

    invoke-direct {v0, v1, v2, v3}, Lcom/mopub/mraid/MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->UNSPECIFIED:Lcom/mopub/mraid/MraidJavascriptCommand;

    .line 5
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/mopub/mraid/MraidJavascriptCommand;

    sget-object v1, Lcom/mopub/mraid/MraidJavascriptCommand;->CLOSE:Lcom/mopub/mraid/MraidJavascriptCommand;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mopub/mraid/MraidJavascriptCommand;->EXPAND:Lcom/mopub/mraid/MraidJavascriptCommand;

    aput-object v1, v0, v5

    sget-object v1, Lcom/mopub/mraid/MraidJavascriptCommand;->USE_CUSTOM_CLOSE:Lcom/mopub/mraid/MraidJavascriptCommand;

    aput-object v1, v0, v6

    sget-object v1, Lcom/mopub/mraid/MraidJavascriptCommand;->OPEN:Lcom/mopub/mraid/MraidJavascriptCommand;

    aput-object v1, v0, v7

    sget-object v1, Lcom/mopub/mraid/MraidJavascriptCommand;->RESIZE:Lcom/mopub/mraid/MraidJavascriptCommand;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/mopub/mraid/MraidJavascriptCommand;->SET_ORIENTATION_PROPERTIES:Lcom/mopub/mraid/MraidJavascriptCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/mopub/mraid/MraidJavascriptCommand;->PLAY_VIDEO:Lcom/mopub/mraid/MraidJavascriptCommand;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/mopub/mraid/MraidJavascriptCommand;->STORE_PICTURE:Lcom/mopub/mraid/MraidJavascriptCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/mopub/mraid/MraidJavascriptCommand;->CREATE_CALENDAR_EVENT:Lcom/mopub/mraid/MraidJavascriptCommand;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/mopub/mraid/MraidJavascriptCommand;->UNSPECIFIED:Lcom/mopub/mraid/MraidJavascriptCommand;

    aput-object v2, v0, v1

    sput-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->b:[Lcom/mopub/mraid/MraidJavascriptCommand;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput-object p3, p0, Lcom/mopub/mraid/MraidJavascriptCommand;->a:Ljava/lang/String;

    .line 51
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/mopub/mraid/MraidJavascriptCommand$1;)V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/mopub/mraid/MraidJavascriptCommand;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static a(Ljava/lang/String;)Lcom/mopub/mraid/MraidJavascriptCommand;
    .locals 5

    .prologue
    .line 54
    invoke-static {}, Lcom/mopub/mraid/MraidJavascriptCommand;->values()[Lcom/mopub/mraid/MraidJavascriptCommand;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 55
    iget-object v4, v0, Lcom/mopub/mraid/MraidJavascriptCommand;->a:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 60
    :goto_1
    return-object v0

    .line 54
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 60
    :cond_1
    sget-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->UNSPECIFIED:Lcom/mopub/mraid/MraidJavascriptCommand;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mraid/MraidJavascriptCommand;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/mopub/mraid/MraidJavascriptCommand;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/mraid/MraidJavascriptCommand;

    return-object v0
.end method

.method public static values()[Lcom/mopub/mraid/MraidJavascriptCommand;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/mopub/mraid/MraidJavascriptCommand;->b:[Lcom/mopub/mraid/MraidJavascriptCommand;

    invoke-virtual {v0}, [Lcom/mopub/mraid/MraidJavascriptCommand;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mraid/MraidJavascriptCommand;

    return-object v0
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/mopub/mraid/MraidJavascriptCommand;->a:Ljava/lang/String;

    return-object v0
.end method

.method a(Lcom/mopub/mraid/PlacementType;)Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method
