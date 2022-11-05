.class final Lcom/flurry/sdk/am$3$3;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/am$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/am$3;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/am$3;)V
    .locals 0

    .prologue
    .line 233
    iput-object p1, p0, Lcom/flurry/sdk/am$3$3;->a:Lcom/flurry/sdk/am$3;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 236
    iget-object v0, p0, Lcom/flurry/sdk/am$3$3;->a:Lcom/flurry/sdk/am$3;

    iget-object v0, v0, Lcom/flurry/sdk/am$3;->a:Lcom/flurry/sdk/am;

    invoke-static {v0}, Lcom/flurry/sdk/am;->h(Lcom/flurry/sdk/am;)V

    .line 237
    return-void
.end method
