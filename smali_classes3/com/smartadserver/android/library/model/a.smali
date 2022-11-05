.class public Lcom/smartadserver/android/library/model/a;
.super Ljava/lang/Object;
.source "SASMediationAdElement.java"


# instance fields
.field private a:I

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:[Lcom/smartadserver/android/library/model/d;

.field private f:Lcom/smartadserver/android/library/c/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/smartadserver/android/library/model/a;->a:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/smartadserver/android/library/model/a;->a:I

    .line 34
    return-void
.end method

.method public a(Lcom/smartadserver/android/library/c/g;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/smartadserver/android/library/model/a;->f:Lcom/smartadserver/android/library/c/g;

    .line 109
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/smartadserver/android/library/model/a;->c:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 48
    iput-object p1, p0, Lcom/smartadserver/android/library/model/a;->b:Ljava/util/HashMap;

    .line 49
    return-void
.end method

.method public a([Lcom/smartadserver/android/library/model/d;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/smartadserver/android/library/model/a;->e:[Lcom/smartadserver/android/library/model/d;

    .line 94
    return-void
.end method

.method public b()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 40
    iget-object v0, p0, Lcom/smartadserver/android/library/model/a;->b:Ljava/util/HashMap;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/smartadserver/android/library/model/a;->d:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/smartadserver/android/library/model/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d()[Lcom/smartadserver/android/library/model/d;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/smartadserver/android/library/model/a;->e:[Lcom/smartadserver/android/library/model/d;

    return-object v0
.end method

.method public e()Lcom/smartadserver/android/library/c/g;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/smartadserver/android/library/model/a;->f:Lcom/smartadserver/android/library/c/g;

    return-object v0
.end method
