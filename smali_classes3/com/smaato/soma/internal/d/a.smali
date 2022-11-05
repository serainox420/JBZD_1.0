.class public Lcom/smaato/soma/internal/d/a;
.super Ljava/lang/Object;
.source "CompanionAd.java"


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/smaato/soma/internal/d/a;->e:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/smaato/soma/internal/d/a;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 45
    iput p1, p0, Lcom/smaato/soma/internal/d/a;->a:I

    .line 46
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/smaato/soma/internal/d/a;->d:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public b()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/smaato/soma/internal/d/a;->b:I

    return v0
.end method

.method public b(I)V
    .locals 0

    .prologue
    .line 62
    iput p1, p0, Lcom/smaato/soma/internal/d/a;->b:I

    .line 63
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/smaato/soma/internal/d/a;->f:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/smaato/soma/internal/d/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 121
    iput-object p1, p0, Lcom/smaato/soma/internal/d/a;->c:Ljava/lang/String;

    .line 122
    return-void
.end method

.method public d()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 87
    iget-object v0, p0, Lcom/smaato/soma/internal/d/a;->e:Ljava/util/Vector;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/smaato/soma/internal/d/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/smaato/soma/internal/d/a;->c:Ljava/lang/String;

    return-object v0
.end method
