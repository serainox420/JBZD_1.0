.class Lcom/loopme/AdBrowserActivity$3;
.super Ljava/lang/Object;
.source "AdBrowserActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/AdBrowserActivity;->initButtonListeners(Landroid/webkit/WebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/AdBrowserActivity;


# direct methods
.method constructor <init>(Lcom/loopme/AdBrowserActivity;)V
    .locals 0

    .prologue
    .line 188
    iput-object p1, p0, Lcom/loopme/AdBrowserActivity$3;->this$0:Lcom/loopme/AdBrowserActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/loopme/AdBrowserActivity$3;->this$0:Lcom/loopme/AdBrowserActivity;

    invoke-virtual {v0}, Lcom/loopme/AdBrowserActivity;->finish()V

    .line 192
    return-void
.end method
