.class public Lcom/flurry/sdk/jz;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/flurry/sdk/jz;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/jz;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 5

    .prologue
    .line 15
    invoke-static {}, Lcom/flurry/sdk/lp;->a()Lcom/flurry/sdk/lp;

    move-result-object v0

    const-string v1, "AgentVersion"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lp;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 16
    const/4 v1, 0x4

    sget-object v2, Lcom/flurry/sdk/jz;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getAgentVersion() = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 17
    return v0
.end method

.method public static b()Ljava/lang/String;
    .locals 7

    .prologue
    .line 38
    invoke-static {}, Lcom/flurry/sdk/jz;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 39
    const-string v0, "."

    move-object v1, v0

    .line 44
    :goto_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "Flurry_Android_%d_%d.%d.%d%s%s"

    const/4 v0, 0x6

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 45
    invoke-static {}, Lcom/flurry/sdk/jz;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    const/4 v5, 0x1

    .line 1021
    invoke-static {}, Lcom/flurry/sdk/lp;->a()Lcom/flurry/sdk/lp;

    move-result-object v0

    const-string v6, "ReleaseMajorVersion"

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/lp;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x2

    .line 1025
    invoke-static {}, Lcom/flurry/sdk/lp;->a()Lcom/flurry/sdk/lp;

    move-result-object v0

    const-string v6, "ReleaseMinorVersion"

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/lp;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v5, 0x3

    .line 1029
    invoke-static {}, Lcom/flurry/sdk/lp;->a()Lcom/flurry/sdk/lp;

    move-result-object v0

    const-string v6, "ReleasePatchVersion"

    invoke-virtual {v0, v6}, Lcom/flurry/sdk/lp;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x4

    aput-object v1, v4, v0

    const/4 v0, 0x5

    invoke-static {}, Lcom/flurry/sdk/jz;->c()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    .line 44
    invoke-static {v2, v3, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 48
    return-object v0

    .line 41
    :cond_0
    const-string v0, ""

    move-object v1, v0

    goto :goto_0
.end method

.method private static c()Ljava/lang/String;
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lcom/flurry/sdk/lp;->a()Lcom/flurry/sdk/lp;

    move-result-object v0

    const-string v1, "ReleaseBetaVersion"

    invoke-virtual {v0, v1}, Lcom/flurry/sdk/lp;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
