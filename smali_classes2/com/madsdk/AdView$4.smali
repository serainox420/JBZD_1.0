.class Lcom/madsdk/AdView$4;
.super Ljava/lang/Object;
.source "AdView.java"

# interfaces
.implements Lcom/madsdk/AppInfo$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/madsdk/AdView;->loadAd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/madsdk/AdView;

.field final synthetic val$p:Ljava/lang/String;

.field final synthetic val$publication:Ljava/lang/String;

.field final synthetic val$srh:Ljava/lang/String;

.field final synthetic val$srw:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/madsdk/AdView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/madsdk/AdView$4;->this$0:Lcom/madsdk/AdView;

    iput-object p2, p0, Lcom/madsdk/AdView$4;->val$publication:Ljava/lang/String;

    iput-object p3, p0, Lcom/madsdk/AdView$4;->val$srw:Ljava/lang/String;

    iput-object p4, p0, Lcom/madsdk/AdView$4;->val$srh:Ljava/lang/String;

    iput-object p5, p0, Lcom/madsdk/AdView$4;->val$p:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppInfoLoaded(Lcom/madsdk/AppInfo;)V
    .locals 6

    .prologue
    .line 503
    iget-object v0, p0, Lcom/madsdk/AdView$4;->this$0:Lcom/madsdk/AdView;

    iget-object v1, p0, Lcom/madsdk/AdView$4;->val$publication:Ljava/lang/String;

    iget-object v2, p0, Lcom/madsdk/AdView$4;->val$srw:Ljava/lang/String;

    iget-object v3, p0, Lcom/madsdk/AdView$4;->val$srh:Ljava/lang/String;

    iget-object v5, p0, Lcom/madsdk/AdView$4;->val$p:Ljava/lang/String;

    move-object v4, p1

    invoke-static/range {v0 .. v5}, Lcom/madsdk/AdView;->access$1900(Lcom/madsdk/AdView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/madsdk/AppInfo;Ljava/lang/String;)V

    .line 504
    return-void
.end method
