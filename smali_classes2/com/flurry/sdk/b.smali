.class public final Lcom/flurry/sdk/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/flurry/sdk/bc;

.field public final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final c:Landroid/content/Context;

.field public final d:Lcom/flurry/sdk/r;

.field public final e:Lcom/flurry/sdk/au;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/bc;Ljava/util/Map;Landroid/content/Context;Lcom/flurry/sdk/r;Lcom/flurry/sdk/au;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/flurry/sdk/bc;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/flurry/sdk/r;",
            "Lcom/flurry/sdk/au;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    .line 24
    iput-object p2, p0, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    .line 25
    iput-object p3, p0, Lcom/flurry/sdk/b;->c:Landroid/content/Context;

    .line 26
    iput-object p4, p0, Lcom/flurry/sdk/b;->d:Lcom/flurry/sdk/r;

    .line 27
    iput-object p5, p0, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 28
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/flurry/sdk/bc;
    .locals 5

    .prologue
    .line 59
    invoke-static {}, Lcom/flurry/sdk/bc;->values()[Lcom/flurry/sdk/bc;

    move-result-object v2

    .line 60
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 3079
    iget-object v4, v0, Lcom/flurry/sdk/bc;->ag:Ljava/lang/String;

    .line 61
    invoke-virtual {v4, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 65
    :goto_1
    return-object v0

    .line 60
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 65
    :cond_1
    sget-object v0, Lcom/flurry/sdk/bc;->a:Lcom/flurry/sdk/bc;

    goto :goto_1
.end method


# virtual methods
.method public final a()Lcom/flurry/sdk/cs;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 2078
    iget-object v0, v0, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 3058
    iget-object v0, v0, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 47
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    const-string v1, "event="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/b;->a:Lcom/flurry/sdk/bc;

    invoke-virtual {v2}, Lcom/flurry/sdk/bc;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    const-string v1, ",params="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/b;->b:Ljava/util/Map;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 72
    iget-object v1, p0, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    invoke-virtual {v1}, Lcom/flurry/sdk/au;->i()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 73
    const-string v1, ",adspace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/flurry/sdk/b;->e:Lcom/flurry/sdk/au;

    .line 4078
    iget-object v2, v2, Lcom/flurry/sdk/au;->b:Lcom/flurry/sdk/ay;

    .line 5058
    iget-object v2, v2, Lcom/flurry/sdk/ay;->b:Lcom/flurry/sdk/cs;

    .line 73
    iget-object v2, v2, Lcom/flurry/sdk/cs;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
