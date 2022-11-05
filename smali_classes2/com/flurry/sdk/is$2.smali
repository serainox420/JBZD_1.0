.class final Lcom/flurry/sdk/is$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flurry/sdk/is;->a(Lcom/flurry/sdk/it;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/flurry/sdk/is;


# direct methods
.method constructor <init>(Lcom/flurry/sdk/is;)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lcom/flurry/sdk/is$2;->a:Lcom/flurry/sdk/is;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/flurry/sdk/is$2;->a:Lcom/flurry/sdk/is;

    invoke-static {v0}, Lcom/flurry/sdk/is;->b(Lcom/flurry/sdk/is;)V

    .line 132
    return-void
.end method
