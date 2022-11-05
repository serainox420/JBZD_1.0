.class final Lcom/flurry/sdk/im$1;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/im;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/im;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/im;)V
    .locals 0

    .prologue
    .line 101
    iput-object p1, p0, Lcom/flurry/sdk/im$1;->a:Lcom/flurry/sdk/im;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/flurry/sdk/im$1;->a:Lcom/flurry/sdk/im;

    invoke-static {v0}, Lcom/flurry/sdk/im;->a(Lcom/flurry/sdk/im;)V

    .line 105
    return-void
.end method
