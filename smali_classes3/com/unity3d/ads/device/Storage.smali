.class public Lcom/unity3d/ads/device/Storage;
.super Ljava/lang/Object;
.source "Storage.java"


# instance fields
.field private _data:Lorg/json/JSONObject;

.field private _targetFileName:Ljava/lang/String;

.field private _type:Lcom/unity3d/ads/device/StorageManager$StorageType;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/unity3d/ads/device/StorageManager$StorageType;)V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/unity3d/ads/device/Storage;->_targetFileName:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/unity3d/ads/device/Storage;->_type:Lcom/unity3d/ads/device/StorageManager$StorageType;

    .line 28
    return-void
.end method

.method private declared-synchronized createObjectTree(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 247
    monitor-enter p0

    :try_start_0
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 248
    iget-object v1, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    .line 250
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 273
    :cond_0
    monitor-exit p0

    return-void

    .line 254
    :cond_1
    const/4 v0, 0x0

    move v2, v0

    move-object v0, v1

    :goto_0
    :try_start_1
    array-length v1, v3

    if-ge v2, v1, :cond_0

    .line 255
    aget-object v1, v3, v2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 257
    :try_start_2
    aget-object v1, v3, v2

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v0, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v1

    .line 258
    :try_start_3
    aget-object v0, v3, v2

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 254
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 260
    :catch_0
    move-exception v1

    .line 261
    :goto_2
    :try_start_4
    const-string v4, "Couldn\'t create new JSONObject"

    invoke-static {v4, v1}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 247
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 266
    :cond_2
    :try_start_5
    aget-object v1, v3, v2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 268
    :catch_1
    move-exception v1

    .line 269
    :try_start_6
    const-string v4, "Couldn\'t get existing JSONObject"

    invoke-static {v4, v1}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 260
    :catch_2
    move-exception v0

    move-object v5, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_2
.end method

.method private declared-synchronized findObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 221
    monitor-enter p0

    :try_start_0
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 222
    iget-object v0, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    .line 224
    invoke-virtual {p1}, Ljava/lang/String;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_1

    .line 243
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v0

    .line 228
    :cond_1
    const/4 v2, 0x0

    :goto_1
    :try_start_1
    array-length v3, v4

    if-ge v2, v3, :cond_0

    .line 229
    aget-object v3, v4, v2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-eqz v3, :cond_2

    .line 231
    :try_start_2
    aget-object v3, v4, v2

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v3

    .line 228
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_1

    .line 233
    :catch_0
    move-exception v0

    .line 234
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t read JSONObject: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v2, v4, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    .line 235
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 239
    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 278
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 279
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 280
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 281
    const-string v1, "."

    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 283
    monitor-exit p0

    return-object v0

    .line 277
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clearData()V
    .locals 1

    .prologue
    .line 189
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    monitor-exit p0

    return-void

    .line 189
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized clearStorage()Z
    .locals 2

    .prologue
    .line 183
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    .line 184
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/unity3d/ads/device/Storage;->_targetFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 183
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized delete(Ljava/lang/String;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 126
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 127
    const-string v0, "Data is NULL, readStorage probably not called"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 139
    :goto_0
    monitor-exit p0

    return v0

    .line 131
    :cond_0
    :try_start_1
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 132
    invoke-direct {p0, p1}, Lcom/unity3d/ads/device/Storage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/device/Storage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_1

    .line 133
    invoke-direct {p0, p1}, Lcom/unity3d/ads/device/Storage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/device/Storage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 135
    if-eqz v0, :cond_1

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-eqz v0, :cond_1

    .line 136
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 139
    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized get(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    if-nez v0, :cond_1

    .line 65
    const-string v0, "Data is NULL, readStorage probably not called"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v1

    .line 69
    :cond_1
    :try_start_1
    const-string v0, "\\."

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-direct {p0, p1}, Lcom/unity3d/ads/device/Storage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/device/Storage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    .line 71
    invoke-direct {p0, p1}, Lcom/unity3d/ads/device/Storage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/device/Storage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    if-eqz v0, :cond_0

    .line 76
    :try_start_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v2, v3

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 77
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :goto_1
    move-object v1, v0

    .line 84
    goto :goto_0

    .line 80
    :catch_0
    move-exception v0

    .line 81
    :try_start_3
    const-string v2, "Error getting data"

    invoke-static {v2, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_2
    move-object v0, v1

    goto :goto_1

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getKeys(Ljava/lang/String;Z)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 92
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/device/Storage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_2

    .line 93
    invoke-virtual {p0, p1}, Lcom/unity3d/ads/device/Storage;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 95
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 98
    if-eqz v0, :cond_1

    .line 99
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 101
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    if-eqz p2, :cond_3

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/unity3d/ads/device/Storage;->getKeys(Ljava/lang/String;Z)Ljava/util/List;

    move-result-object v1

    .line 109
    :goto_0
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    if-eqz v1, :cond_0

    .line 112
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 113
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 92
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_1
    move-object v0, v2

    .line 122
    :goto_2
    monitor-exit p0

    return-object v0

    :cond_2
    move-object v0, v3

    goto :goto_2

    :cond_3
    move-object v1, v3

    goto :goto_0
.end method

.method public getType()Lcom/unity3d/ads/device/StorageManager$StorageType;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/unity3d/ads/device/Storage;->_type:Lcom/unity3d/ads/device/StorageManager$StorageType;

    return-object v0
.end method

.method public declared-synchronized hasData()Z
    .locals 1

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-lez v0, :cond_0

    .line 194
    const/4 v0, 0x1

    .line 196
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized initStorage()Z
    .locals 1

    .prologue
    .line 162
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/unity3d/ads/device/Storage;->readStorage()Z

    .line 163
    iget-object v0, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized readStorage()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 143
    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/unity3d/ads/device/Storage;->_targetFileName:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    invoke-static {v1}, Lcom/unity3d/ads/misc/Utilities;->readFile(Ljava/io/File;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 146
    if-eqz v2, :cond_0

    .line 148
    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/unity3d/ads/misc/Utilities;->readFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    const/4 v0, 0x1

    .line 158
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 150
    :catch_0
    move-exception v1

    .line 151
    :try_start_2
    const-string v2, "Error creating storage JSON"

    invoke-static {v2, v1}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 143
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public varargs declared-synchronized sendEvent(Lcom/unity3d/ads/device/StorageEvent;[Ljava/lang/Object;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 205
    monitor-enter p0

    .line 207
    :try_start_0
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 208
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 209
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 210
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/unity3d/ads/device/Storage;->_type:Lcom/unity3d/ads/device/StorageManager$StorageType;

    invoke-virtual {v2}, Lcom/unity3d/ads/device/StorageManager$StorageType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 211
    invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    .line 212
    invoke-static {}, Lcom/unity3d/ads/webview/WebViewApp;->getCurrentApp()Lcom/unity3d/ads/webview/WebViewApp;

    move-result-object v1

    sget-object v2, Lcom/unity3d/ads/webview/WebViewEventCategory;->STORAGE:Lcom/unity3d/ads/webview/WebViewEventCategory;

    invoke-virtual {v1, v2, p1, v0}, Lcom/unity3d/ads/webview/WebViewApp;->sendEvent(Ljava/lang/Enum;Ljava/lang/Enum;[Ljava/lang/Object;)Z

    move-result v0

    .line 215
    :cond_0
    if-nez v0, :cond_1

    .line 216
    const-string v0, "Couldn\'t send storage event to WebApp"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    :cond_1
    monitor-exit p0

    return-void

    .line 205
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized set(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 35
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    .line 36
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Storage not properly initialized or incorrect parameters:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->error(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    .line 60
    :goto_0
    monitor-exit p0

    return v0

    .line 40
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Lcom/unity3d/ads/device/Storage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/device/Storage;->createObjectTree(Ljava/lang/String;)V

    .line 42
    invoke-direct {p0, p1}, Lcom/unity3d/ads/device/Storage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/device/Storage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lorg/json/JSONObject;

    if-eqz v0, :cond_3

    .line 43
    invoke-direct {p0, p1}, Lcom/unity3d/ads/device/Storage;->getParentObjectTreeFor(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unity3d/ads/device/Storage;->findObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    .line 44
    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 46
    if-eqz v0, :cond_2

    .line 48
    :try_start_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v0, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    :catch_0
    move-exception v0

    .line 50
    :try_start_3
    const-string v2, "Couldn\'t set value"

    invoke-static {v2, v0}, Lcom/unity3d/ads/log/DeviceLog;->exception(Ljava/lang/String;Ljava/lang/Exception;)V

    move v0, v1

    .line 51
    goto :goto_0

    .line 56
    :cond_3
    const-string v0, "Cannot set subvalue to an object that is not JSONObject"

    invoke-static {v0}, Lcom/unity3d/ads/log/DeviceLog;->debug(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v1

    .line 57
    goto :goto_0

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized storageFileExists()Z
    .locals 2

    .prologue
    .line 200
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/unity3d/ads/device/Storage;->_targetFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    .line 200
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeStorage()Z
    .locals 2

    .prologue
    .line 171
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/unity3d/ads/device/Storage;->_targetFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 173
    iget-object v1, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    if-eqz v1, :cond_0

    .line 175
    iget-object v1, p0, Lcom/unity3d/ads/device/Storage;->_data:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unity3d/ads/misc/Utilities;->writeFile(Ljava/io/File;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 179
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
