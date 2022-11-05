.class Lcom/madsdk/BrowserActivity$5;
.super Ljava/lang/Object;
.source "BrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/madsdk/BrowserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madsdk/BrowserActivity;


# direct methods
.method constructor <init>(Lcom/madsdk/BrowserActivity;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/madsdk/BrowserActivity$5;->this$0:Lcom/madsdk/BrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/madsdk/BrowserActivity$5;->this$0:Lcom/madsdk/BrowserActivity;

    invoke-static {v0}, Lcom/madsdk/BrowserActivity;->access$500(Lcom/madsdk/BrowserActivity;)V

    .line 124
    return-void
.end method
