.class final Lcom/flurry/sdk/q$5;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/q;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/q;)V
    .locals 0

    .prologue
    .line 345
    iput-object p1, p0, Lcom/flurry/sdk/q$5;->a:Lcom/flurry/sdk/q;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 348
    iget-object v0, p0, Lcom/flurry/sdk/q$5;->a:Lcom/flurry/sdk/q;

    invoke-static {v0}, Lcom/flurry/sdk/q;->b(Lcom/flurry/sdk/q;)V

    .line 349
    return-void
.end method
