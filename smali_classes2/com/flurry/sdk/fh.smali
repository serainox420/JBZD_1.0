.class public Lcom/flurry/sdk/fh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/flurry/sdk/fh;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/fh;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/flurry/sdk/r;)V
    .locals 4

    .prologue
    .line 15
    if-nez p0, :cond_0

    .line 25
    :goto_0
    return-void

    .line 19
    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/fh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Firing onFetched, adObject="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 21
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 22
    iput-object p0, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 23
    sget-object v1, Lcom/flurry/sdk/d$a;->a:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 24
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    goto :goto_0
.end method

.method public static a(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V
    .locals 4

    .prologue
    .line 28
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return-void

    .line 32
    :cond_1
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/fh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Firing onFetchFailed, adObject="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 35
    iput-object p0, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 36
    sget-object v1, Lcom/flurry/sdk/d$a;->b:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 37
    iput-object p1, v0, Lcom/flurry/sdk/d;->c:Lcom/flurry/sdk/bb;

    .line 38
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    goto :goto_0
.end method

.method public static b(Lcom/flurry/sdk/r;)V
    .locals 4

    .prologue
    .line 42
    if-nez p0, :cond_0

    .line 52
    :goto_0
    return-void

    .line 46
    :cond_0
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/fh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Firing onRendered, adObject="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 49
    iput-object p0, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 50
    sget-object v1, Lcom/flurry/sdk/d$a;->c:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 51
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    goto :goto_0
.end method

.method public static b(Lcom/flurry/sdk/r;Lcom/flurry/sdk/bb;)V
    .locals 4

    .prologue
    .line 55
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 59
    :cond_1
    const/4 v0, 0x3

    sget-object v1, Lcom/flurry/sdk/fh;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Firing onRenderFailed, adObject="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", errorCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 61
    new-instance v0, Lcom/flurry/sdk/d;

    invoke-direct {v0}, Lcom/flurry/sdk/d;-><init>()V

    .line 62
    iput-object p0, v0, Lcom/flurry/sdk/d;->a:Lcom/flurry/sdk/r;

    .line 63
    sget-object v1, Lcom/flurry/sdk/d$a;->d:Lcom/flurry/sdk/d$a;

    iput-object v1, v0, Lcom/flurry/sdk/d;->b:Lcom/flurry/sdk/d$a;

    .line 64
    iput-object p1, v0, Lcom/flurry/sdk/d;->c:Lcom/flurry/sdk/bb;

    .line 65
    invoke-virtual {v0}, Lcom/flurry/sdk/d;->b()V

    goto :goto_0
.end method
