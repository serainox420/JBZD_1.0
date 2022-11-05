.class final Lcom/flurry/sdk/jx$3;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/jx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/jx;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/jx;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/flurry/sdk/jx$3;->a:Lcom/flurry/sdk/jx;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/flurry/sdk/jp;->a()Lcom/flurry/sdk/jp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/flurry/sdk/jp;->e()V

    .line 97
    return-void
.end method
