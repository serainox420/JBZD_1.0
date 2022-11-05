.class final Lcom/flurry/sdk/im$10;
.super Lcom/flurry/sdk/ma;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/im;-><init>()V
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
    .line 207
    iput-object p1, p0, Lcom/flurry/sdk/im$10;->a:Lcom/flurry/sdk/im;

    invoke-direct {p0}, Lcom/flurry/sdk/ma;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/flurry/sdk/im$10;->a:Lcom/flurry/sdk/im;

    invoke-static {v0}, Lcom/flurry/sdk/im;->c(Lcom/flurry/sdk/im;)V

    .line 211
    return-void
.end method
