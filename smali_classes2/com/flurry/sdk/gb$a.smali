.class public final Lcom/flurry/sdk/gb$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/gb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/flurry/sdk/gb;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Lcom/flurry/sdk/gb;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/gb;-><init>(B)V

    iput-object v0, p0, Lcom/flurry/sdk/gb$a;->a:Lcom/flurry/sdk/gb;

    .line 79
    return-void
.end method


# virtual methods
.method public final a(Lcom/flurry/sdk/fu;)Lcom/flurry/sdk/gb$a;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/flurry/sdk/gb$a;->a:Lcom/flurry/sdk/gb;

    .line 1007
    iput-object p1, v0, Lcom/flurry/sdk/gb;->a:Lcom/flurry/sdk/fu;

    .line 83
    return-object p0
.end method

.method public final a(Lcom/flurry/sdk/ga;)Lcom/flurry/sdk/gb$a;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/flurry/sdk/gb$a;->a:Lcom/flurry/sdk/gb;

    .line 3007
    iput-object p1, v0, Lcom/flurry/sdk/gb;->c:Lcom/flurry/sdk/ga;

    .line 93
    return-object p0
.end method

.method public final a(Ljava/lang/String;)Lcom/flurry/sdk/gb$a;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/flurry/sdk/gb$a;->a:Lcom/flurry/sdk/gb;

    .line 2007
    iput-object p1, v0, Lcom/flurry/sdk/gb;->b:Ljava/lang/String;

    .line 88
    return-object p0
.end method

.method public final a(Ljava/util/List;)Lcom/flurry/sdk/gb$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/gb$a;"
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/flurry/sdk/gb$a;->a:Lcom/flurry/sdk/gb;

    .line 4007
    iput-object p1, v0, Lcom/flurry/sdk/gb;->d:Ljava/util/List;

    .line 98
    return-object p0
.end method

.method public final b(Ljava/util/List;)Lcom/flurry/sdk/gb$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/gb$a;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/flurry/sdk/gb$a;->a:Lcom/flurry/sdk/gb;

    .line 5007
    iput-object p1, v0, Lcom/flurry/sdk/gb;->e:Ljava/util/List;

    .line 103
    return-object p0
.end method

.method public final c(Ljava/util/List;)Lcom/flurry/sdk/gb$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/flurry/sdk/gb$a;"
        }
    .end annotation

    .prologue
    .line 107
    iget-object v0, p0, Lcom/flurry/sdk/gb$a;->a:Lcom/flurry/sdk/gb;

    .line 6007
    iput-object p1, v0, Lcom/flurry/sdk/gb;->f:Ljava/util/List;

    .line 108
    return-object p0
.end method

.method public final d(Ljava/util/List;)Lcom/flurry/sdk/gb$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/flurry/sdk/gc;",
            ">;)",
            "Lcom/flurry/sdk/gb$a;"
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/flurry/sdk/gb$a;->a:Lcom/flurry/sdk/gb;

    .line 7007
    iput-object p1, v0, Lcom/flurry/sdk/gb;->g:Ljava/util/List;

    .line 113
    return-object p0
.end method
