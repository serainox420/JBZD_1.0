.class final enum Lcom/mopub/mraid/b;
.super Ljava/lang/Enum;
.source "MraidOrientation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/mopub/mraid/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum LANDSCAPE:Lcom/mopub/mraid/b;

.field public static final enum NONE:Lcom/mopub/mraid/b;

.field public static final enum PORTRAIT:Lcom/mopub/mraid/b;

.field private static final synthetic b:[Lcom/mopub/mraid/b;


# instance fields
.field private final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6
    new-instance v0, Lcom/mopub/mraid/b;

    const-string v1, "PORTRAIT"

    invoke-direct {v0, v1, v3, v4}, Lcom/mopub/mraid/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/mraid/b;->PORTRAIT:Lcom/mopub/mraid/b;

    .line 7
    new-instance v0, Lcom/mopub/mraid/b;

    const-string v1, "LANDSCAPE"

    invoke-direct {v0, v1, v4, v3}, Lcom/mopub/mraid/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/mraid/b;->LANDSCAPE:Lcom/mopub/mraid/b;

    .line 8
    new-instance v0, Lcom/mopub/mraid/b;

    const-string v1, "NONE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/mopub/mraid/b;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/mopub/mraid/b;->NONE:Lcom/mopub/mraid/b;

    .line 5
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/mopub/mraid/b;

    sget-object v1, Lcom/mopub/mraid/b;->PORTRAIT:Lcom/mopub/mraid/b;

    aput-object v1, v0, v3

    sget-object v1, Lcom/mopub/mraid/b;->LANDSCAPE:Lcom/mopub/mraid/b;

    aput-object v1, v0, v4

    sget-object v1, Lcom/mopub/mraid/b;->NONE:Lcom/mopub/mraid/b;

    aput-object v1, v0, v5

    sput-object v0, Lcom/mopub/mraid/b;->b:[Lcom/mopub/mraid/b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 13
    iput p3, p0, Lcom/mopub/mraid/b;->a:I

    .line 14
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/mopub/mraid/b;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lcom/mopub/mraid/b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/mopub/mraid/b;

    return-object v0
.end method

.method public static values()[Lcom/mopub/mraid/b;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lcom/mopub/mraid/b;->b:[Lcom/mopub/mraid/b;

    invoke-virtual {v0}, [Lcom/mopub/mraid/b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/mopub/mraid/b;

    return-object v0
.end method


# virtual methods
.method a()I
    .locals 1

    .prologue
    .line 17
    iget v0, p0, Lcom/mopub/mraid/b;->a:I

    return v0
.end method
