.class Lcom/loopme/NativeVideoAdapter$2;
.super Landroid/database/DataSetObserver;
.source "NativeVideoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loopme/NativeVideoAdapter;-><init>(Landroid/widget/BaseAdapter;Landroid/content/Context;Landroid/widget/AbsListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/loopme/NativeVideoAdapter;


# direct methods
.method constructor <init>(Lcom/loopme/NativeVideoAdapter;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lcom/loopme/NativeVideoAdapter$2;->this$0:Lcom/loopme/NativeVideoAdapter;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter$2;->this$0:Lcom/loopme/NativeVideoAdapter;

    invoke-static {v0}, Lcom/loopme/NativeVideoAdapter;->access$200(Lcom/loopme/NativeVideoAdapter;)V

    .line 64
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/loopme/NativeVideoAdapter$2;->this$0:Lcom/loopme/NativeVideoAdapter;

    invoke-virtual {v0}, Lcom/loopme/NativeVideoAdapter;->notifyDataSetInvalidated()V

    .line 69
    return-void
.end method
