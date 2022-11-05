.class Lcom/mdotm/android/http/MdotMRequestQueueClient$1;
.super Landroid/os/Handler;
.source "MdotMRequestQueueClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mdotm/android/http/MdotMRequestQueueClient;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;


# direct methods
.method constructor <init>(Lcom/mdotm/android/http/MdotMRequestQueueClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    .line 39
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 44
    :try_start_0
    const-string v1, "Handling the message"

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    if-eqz p1, :cond_0

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " message id "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v1}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$0(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    const-string v1, "contains requested id "

    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v1}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$0(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 50
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v1}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$1(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v1}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$2(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v1}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$3(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 54
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v1}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$3(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 55
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-virtual {v1}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->isApplicationHasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$3(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 58
    const-string v1, "mapRequestQueue size > 0"

    .line 57
    invoke-static {p0, v1}, Lcom/mdotm/android/utils/MdotMLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    iget-object v3, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    .line 60
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v1}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$1(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mdotm/android/model/MdotMAdRequest;

    .line 61
    iget-object v2, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v2}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$2(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v2

    .line 62
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mdotm/android/listener/MdotMNetworkListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 59
    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->sendNextRequest(Lcom/mdotm/android/model/MdotMAdRequest;Lcom/mdotm/android/listener/MdotMNetworkListener;J)V

    .line 99
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 110
    :goto_1
    return-void

    :cond_1
    move v2, v0

    .line 64
    :goto_2
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$3(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v0

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 64
    if-lt v2, v0, :cond_2

    .line 77
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$3(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 80
    const-string v0, "still has some interstitial requests so processing"

    .line 79
    invoke-static {p0, v0}, Lcom/mdotm/android/utils/MdotMLogger;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$3(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 82
    iget-object v3, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    .line 83
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v1}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$1(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mdotm/android/model/MdotMAdRequest;

    .line 84
    iget-object v2, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v2}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$2(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v2

    .line 85
    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mdotm/android/listener/MdotMNetworkListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 82
    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->sendNextRequest(Lcom/mdotm/android/model/MdotMAdRequest;Lcom/mdotm/android/listener/MdotMNetworkListener;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 102
    :try_start_1
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$0(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 103
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$1(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 104
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$2(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 105
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$3(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 106
    :catch_1
    move-exception v0

    goto :goto_1

    .line 66
    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$3(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 67
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v1}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$1(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v1

    .line 68
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mdotm/android/model/MdotMAdRequest;

    .line 70
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v1}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$1(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v1}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$2(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v1

    .line 72
    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object v1, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v1}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$3(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_2

    .line 88
    :cond_3
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$0(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$0(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 90
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$1(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 91
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$2(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 92
    iget-object v0, p0, Lcom/mdotm/android/http/MdotMRequestQueueClient$1;->this$0:Lcom/mdotm/android/http/MdotMRequestQueueClient;

    invoke-static {v0}, Lcom/mdotm/android/http/MdotMRequestQueueClient;->access$3(Lcom/mdotm/android/http/MdotMRequestQueueClient;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method
