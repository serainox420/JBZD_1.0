.class public final Lcom/flurry/sdk/ks;
.super Lcom/flurry/sdk/ku;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ks$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RequestObjectType:",
        "Ljava/lang/Object;",
        "ResponseObjectType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/flurry/sdk/ku;"
    }
.end annotation


# instance fields
.field public a:Lcom/flurry/sdk/ks$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/ks$a",
            "<TRequestObjectType;TResponseObjectType;>;"
        }
    .end annotation
.end field

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TRequestObjectType;"
        }
    .end annotation
.end field

.field public c:Lcom/flurry/sdk/lg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/lg",
            "<TRequestObjectType;>;"
        }
    .end annotation
.end field

.field public d:Lcom/flurry/sdk/lg;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/lg",
            "<TResponseObjectType;>;"
        }
    .end annotation
.end field

.field private x:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TResponseObjectType;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/flurry/sdk/ku;-><init>()V

    .line 34
    return-void
.end method

.method static synthetic a(Lcom/flurry/sdk/ks;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/flurry/sdk/ks;->b:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic a(Lcom/flurry/sdk/ks;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .prologue
    .line 14
    iput-object p1, p0, Lcom/flurry/sdk/ks;->x:Ljava/lang/Object;

    return-object p1
.end method

.method static synthetic b(Lcom/flurry/sdk/ks;)Lcom/flurry/sdk/lg;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/flurry/sdk/ks;->c:Lcom/flurry/sdk/lg;

    return-object v0
.end method

.method static synthetic c(Lcom/flurry/sdk/ks;)Lcom/flurry/sdk/lg;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/flurry/sdk/ks;->d:Lcom/flurry/sdk/lg;

    return-object v0
.end method

.method static synthetic d(Lcom/flurry/sdk/ks;)V
    .locals 2

    .prologue
    .line 14
    .line 2095
    iget-object v0, p0, Lcom/flurry/sdk/ks;->a:Lcom/flurry/sdk/ks$a;

    if-eqz v0, :cond_0

    .line 2099
    invoke-virtual {p0}, Lcom/flurry/sdk/ks;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2103
    iget-object v0, p0, Lcom/flurry/sdk/ks;->a:Lcom/flurry/sdk/ks$a;

    iget-object v1, p0, Lcom/flurry/sdk/ks;->x:Ljava/lang/Object;

    invoke-interface {v0, p0, v1}, Lcom/flurry/sdk/ks$a;->a(Lcom/flurry/sdk/ks;Ljava/lang/Object;)V

    .line 14
    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 59
    .line 1067
    new-instance v0, Lcom/flurry/sdk/ks$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ks$1;-><init>(Lcom/flurry/sdk/ks;)V

    .line 1202
    iput-object v0, p0, Lcom/flurry/sdk/ku;->k:Lcom/flurry/sdk/ku$c;

    .line 62
    invoke-super {p0}, Lcom/flurry/sdk/ku;->a()V

    .line 63
    return-void
.end method
