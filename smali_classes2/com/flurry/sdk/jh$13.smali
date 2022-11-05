.class final Lcom/flurry/sdk/jh$13;
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
    .line 246
    iput-object p1, p0, Lcom/flurry/sdk/jh$13;->a:Lcom/flurry/sdk/jh;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/flurry/sdk/jh$13;->a:Lcom/flurry/sdk/jh;

    invoke-static {v0}, Lcom/flurry/sdk/jh;->d(Lcom/flurry/sdk/jh;)V

    .line 250
    return-void
.end method
