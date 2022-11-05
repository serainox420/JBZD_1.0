.class final Lcom/flurry/sdk/k$3$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/k$3;->a(Lcom/flurry/sdk/am;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/k$3;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/k$3;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/flurry/sdk/k$3$1;->a:Lcom/flurry/sdk/k$3;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 156
    iget-object v0, p0, Lcom/flurry/sdk/k$3$1;->a:Lcom/flurry/sdk/k$3;

    iget-object v0, v0, Lcom/flurry/sdk/k$3;->c:Lcom/flurry/sdk/k;

    invoke-static {v0}, Lcom/flurry/sdk/k;->a(Lcom/flurry/sdk/k;)V

    .line 157
    return-void
.end method
