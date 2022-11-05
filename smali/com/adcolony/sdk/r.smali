.class Lcom/adcolony/sdk/r;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "%s_%s_%s"

    iput-object v0, p0, Lcom/adcolony/sdk/r;->d:Ljava/lang/String;

    .line 14
    invoke-direct {p0, p1}, Lcom/adcolony/sdk/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/r;->a:Ljava/lang/String;

    .line 15
    invoke-direct {p0, p2}, Lcom/adcolony/sdk/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/r;->b:Ljava/lang/String;

    .line 16
    invoke-direct {p0, p3}, Lcom/adcolony/sdk/r;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/adcolony/sdk/r;->c:Ljava/lang/String;

    .line 17
    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    const-string v0, "\\."

    const-string v1, "-"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 4

    .prologue
    .line 24
    iget-object v0, p0, Lcom/adcolony/sdk/r;->d:Ljava/lang/String;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 25
    invoke-virtual {p0}, Lcom/adcolony/sdk/r;->b()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 26
    invoke-virtual {p0}, Lcom/adcolony/sdk/r;->c()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 27
    invoke-virtual {p0}, Lcom/adcolony/sdk/r;->d()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 24
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/adcolony/sdk/r;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/adcolony/sdk/r;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/adcolony/sdk/r;->c:Ljava/lang/String;

    return-object v0
.end method
