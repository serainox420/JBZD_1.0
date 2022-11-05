.class public abstract Lcom/flurry/sdk/ky;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/ky$a;
    }
.end annotation


# instance fields
.field private a:Lcom/flurry/sdk/kh;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/flurry/sdk/kh",
            "<",
            "Lcom/flurry/sdk/jq;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Ljava/lang/String;

.field public c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/flurry/sdk/la;

.field public e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/flurry/sdk/ky;->c:Ljava/util/Set;

    .line 33
    const-string v0, "defaultDataKey_"

    iput-object v0, p0, Lcom/flurry/sdk/ky;->e:Ljava/lang/String;

    .line 40
    new-instance v0, Lcom/flurry/sdk/ky$1;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ky$1;-><init>(Lcom/flurry/sdk/ky;)V

    iput-object v0, p0, Lcom/flurry/sdk/ky;->a:Lcom/flurry/sdk/kh;

    .line 51
    iput-object p2, p0, Lcom/flurry/sdk/ky;->b:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/flurry/sdk/ki;->a()Lcom/flurry/sdk/ki;

    move-result-object v0

    const-string v1, "com.flurry.android.sdk.NetworkStateEvent"

    iget-object v2, p0, Lcom/flurry/sdk/ky;->a:Lcom/flurry/sdk/kh;

    invoke-virtual {v0, v1, v2}, Lcom/flurry/sdk/ki;->a(Ljava/lang/String;Lcom/flurry/sdk/kh;)V

    .line 1062
    new-instance v0, Lcom/flurry/sdk/ky$2;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ky$2;-><init>(Lcom/flurry/sdk/ky;Ljava/lang/String;)V

    .line 2058
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 55
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 299
    new-instance v0, Lcom/flurry/sdk/ky$8;

    invoke-direct {v0, p0, p1}, Lcom/flurry/sdk/ky$8;-><init>(Lcom/flurry/sdk/ky;Ljava/lang/String;)V

    .line 6058
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 310
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 277
    new-instance v0, Lcom/flurry/sdk/ky$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/flurry/sdk/ky$7;-><init>(Lcom/flurry/sdk/ky;Ljava/lang/String;Ljava/lang/String;)V

    .line 5058
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 296
    return-void
.end method

.method public abstract a([BLjava/lang/String;Ljava/lang/String;)V
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 124
    new-instance v0, Lcom/flurry/sdk/ky$4;

    invoke-direct {v0, p0}, Lcom/flurry/sdk/ky$4;-><init>(Lcom/flurry/sdk/ky;)V

    .line 4058
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 134
    return-void
.end method

.method public final b([BLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 86
    .line 2092
    if-eqz p1, :cond_0

    array-length v0, p1

    if-nez v0, :cond_1

    .line 2094
    :cond_0
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/flurry/sdk/ky;->b:Ljava/lang/String;

    const-string v2, "Report that has to be sent is EMPTY or NULL"

    invoke-static {v0, v1, v2}, Lcom/flurry/sdk/km;->a(ILjava/lang/String;Ljava/lang/String;)V

    .line 2095
    :goto_0
    return-void

    .line 2111
    :cond_1
    new-instance v0, Lcom/flurry/sdk/ky$3;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/flurry/sdk/ky$3;-><init>(Lcom/flurry/sdk/ky;[BLjava/lang/String;Ljava/lang/String;)V

    .line 3058
    invoke-static {}, Lcom/flurry/sdk/jy;->a()Lcom/flurry/sdk/jy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/flurry/sdk/jy;->b(Ljava/lang/Runnable;)V

    .line 2099
    invoke-virtual {p0}, Lcom/flurry/sdk/ky;->b()V

    goto :goto_0
.end method

.method final c()Z
    .locals 2

    .prologue
    .line 139
    .line 4106
    iget-object v0, p0, Lcom/flurry/sdk/ky;->c:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    .line 139
    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    .line 140
    :goto_0
    return v0

    .line 139
    :cond_0
    const/4 v0, 0x0

    .line 140
    goto :goto_0
.end method
