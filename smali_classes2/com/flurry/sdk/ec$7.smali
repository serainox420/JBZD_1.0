.class final Lcom/flurry/sdk/ec$7;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/ec;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/ec;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/flurry/sdk/ec$7;->a:Lcom/flurry/sdk/ec;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/flurry/sdk/ec$7;->a:Lcom/flurry/sdk/ec;

    invoke-static {v0}, Lcom/flurry/sdk/ec;->c(Lcom/flurry/sdk/ec;)V

    .line 145
    return-void
.end method
