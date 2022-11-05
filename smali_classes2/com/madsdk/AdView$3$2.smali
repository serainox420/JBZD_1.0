.class Lcom/madsdk/AdView$3$2;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madsdk/AdView$3;->expand()V
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
    .line 146
    iput-object p1, p0, Lcom/madsdk/AdView$3$2;->this$1:Lcom/madsdk/AdView$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/madsdk/AdView$3$2;->this$1:Lcom/madsdk/AdView$3;

    iget-object v0, v0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    const-string v1, "expanded"

    invoke-static {v0, v1}, Lcom/madsdk/AdView;->access$900(Lcom/madsdk/AdView;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/madsdk/AdView$3$2;->this$1:Lcom/madsdk/AdView$3;

    iget-object v0, v0, Lcom/madsdk/AdView$3;->this$0:Lcom/madsdk/AdView;

    invoke-static {v0}, Lcom/madsdk/AdView;->access$1000(Lcom/madsdk/AdView;)V

    .line 151
    return-void
.end method
