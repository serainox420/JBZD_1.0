.class final Lcom/flurry/sdk/kx$8;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/kx;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/kx;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/kx;)V
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/flurry/sdk/kx$8;->a:Lcom/flurry/sdk/kx;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/flurry/sdk/kx$8;->a:Lcom/flurry/sdk/kx;

    invoke-static {v0}, Lcom/flurry/sdk/kx;->c(Lcom/flurry/sdk/kx;)V

    .line 159
    return-void
.end method
