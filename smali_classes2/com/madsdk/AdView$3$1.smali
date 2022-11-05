.class Lcom/madsdk/AdView$3$1;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madsdk/AdView$3;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/madsdk/AdView$3;


# direct methods
.method constructor <init>(Lcom/madsdk/AdView$3;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/madsdk/AdView$3$1;->this$1:Lcom/madsdk/AdView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/madsdk/AdView$3$1;->this$1:Lcom/madsdk/AdView$3;

    iget-object v0, v0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$700(Lcom/madsdk/AdView;)V

    .line 139
    return-void
.end method
