.class final Lcom/flurry/sdk/jh$5$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/jh$5;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jh$5;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jh$5;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/flurry/sdk/jh$5$1;->a:Lcom/flurry/sdk/jh$5;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .prologue
    .line 360
    invoke-static {}, Lcom/flurry/sdk/hr;->a()Lcom/flurry/sdk/hr;

    move-result-object v0

    .line 1094
    iget-object v0, v0, Lcom/flurry/sdk/hr;->c:Lcom/flurry/sdk/io;

    .line 2080
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/flurry/sdk/kx;->c:Z

    .line 361
    return-void
.end method
