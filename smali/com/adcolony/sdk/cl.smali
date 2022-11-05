.class Lcom/adcolony/sdk/cl;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    const-string v0, "AdColonyPubServices"

    return-object v0
.end method

.method static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 8
    if-nez p0, :cond_0

    .line 9
    const/4 v0, 0x0

    .line 28
    :goto_0
    return-object v0

    .line 11
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v2, v1

    int-to-double v4, p1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v1, v2

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    move v2, v1

    move v1, v0

    .line 17
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 18
    rem-int v4, v0, p1

    if-nez v4, :cond_1

    .line 19
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v3, v0

    .line 20
    add-int/lit8 v1, v1, 0x1

    .line 17
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aput-char v4, v3, v0

    .line 23
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 27
    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method static a(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    if-eqz p0, :cond_0

    .line 44
    invoke-static {p0}, Lcom/adcolony/sdk/cl;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    invoke-static {p0}, Lcom/adcolony/sdk/cl;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-static {p0}, Lcom/adcolony/sdk/cl;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-static {p0}, Lcom/adcolony/sdk/cl;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-static {p0}, Lcom/adcolony/sdk/cl;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-static {p0}, Lcom/adcolony/sdk/cl;->g(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-static {p0}, Lcom/adcolony/sdk/cl;->h(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-static {p0}, Lcom/adcolony/sdk/cl;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    return-object v0
.end method

.method static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/adcolony/sdk/cl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static b(Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    if-eqz p0, :cond_0

    .line 58
    invoke-static {p0, p1}, Lcom/adcolony/sdk/cl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 59
    invoke-static {v0}, Lcom/adcolony/sdk/co;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/adcolony/sdk/cl;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/adcolony/sdk/cl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x3

    invoke-static {p0, v0}, Lcom/adcolony/sdk/cl;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/adcolony/sdk/cl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static g(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 87
    const/4 v0, 0x4

    invoke-static {p0, v0}, Lcom/adcolony/sdk/cl;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static h(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/adcolony/sdk/cl;->a(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/adcolony/sdk/cl;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
