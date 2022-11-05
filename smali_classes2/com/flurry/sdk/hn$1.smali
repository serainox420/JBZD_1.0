.class public final Lcom/flurry/sdk/hn$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/hn;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/flurry/sdk/hn;


# direct methods
.method public constructor <init>(Lcom/flurry/sdk/hn;I)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/flurry/sdk/hn$1;->b:Lcom/flurry/sdk/hn;

    iput p2, p0, Lcom/flurry/sdk/hn$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/flurry/sdk/hn$1;->b:Lcom/flurry/sdk/hn;

    iget v1, p0, Lcom/flurry/sdk/hn$1;->a:I

    invoke-static {v0, v1}, Lcom/flurry/sdk/hn;->a(Lcom/flurry/sdk/hn;I)V

    .line 87
    return-void
.end method
