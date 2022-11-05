.class final Lcom/flurry/sdk/jh$14;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jh;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jh;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/flurry/sdk/jh$14;->a:Lcom/flurry/sdk/jh;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .prologue
    .line 259
    iget-object v0, p0, Lcom/flurry/sdk/jh$14;->a:Lcom/flurry/sdk/jh;

    const/4 v1, 0x1

    invoke-static {}, Lcom/flurry/sdk/jk;->a()Lcom/flurry/sdk/jk;

    invoke-static {}, Lcom/flurry/sdk/jk;->c()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/flurry/sdk/jh;->a(Lcom/flurry/sdk/jh;ZJ)V

    .line 260
    return-void
.end method
