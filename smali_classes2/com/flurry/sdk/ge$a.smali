.class public final Lcom/flurry/sdk/ge$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/flurry/sdk/ge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/flurry/sdk/ge;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    new-instance v0, Lcom/flurry/sdk/ge;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/flurry/sdk/ge;-><init>(B)V

    iput-object v0, p0, Lcom/flurry/sdk/ge$a;->a:Lcom/flurry/sdk/ge;

    .line 96
    return-void
.end method
