.class Lcom/mopub/common/event/ScribeEventRecorder$a;
.super Ljava/lang/Object;
.source "ScribeEventRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mopub/common/event/ScribeEventRecorder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/mopub/common/event/ScribeEventRecorder;


# direct methods
.method constructor <init>(Lcom/mopub/common/event/ScribeEventRecorder;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/mopub/common/event/ScribeEventRecorder$a;->a:Lcom/mopub/common/event/ScribeEventRecorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/mopub/common/event/ScribeEventRecorder$a;->a:Lcom/mopub/common/event/ScribeEventRecorder;

    invoke-virtual {v0}, Lcom/mopub/common/event/ScribeEventRecorder;->a()V

    .line 139
    iget-object v0, p0, Lcom/mopub/common/event/ScribeEventRecorder$a;->a:Lcom/mopub/common/event/ScribeEventRecorder;

    invoke-virtual {v0}, Lcom/mopub/common/event/ScribeEventRecorder;->c()V

    .line 140
    return-void
.end method
