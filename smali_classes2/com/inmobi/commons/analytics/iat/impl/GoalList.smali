.class public Lcom/inmobi/commons/analytics/iat/impl/GoalList;
.super Ljava/util/Vector;
.source "GoalList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/Vector",
        "<",
        "Lcom/inmobi/commons/analytics/iat/impl/Goal;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-void
.end method

.method public static getLoggedGoals()Lcom/inmobi/commons/analytics/iat/impl/GoalList;
    .locals 3

    .prologue
    .line 20
    const/4 v0, 0x0

    .line 21
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "eventlog"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/FileOperations;->isFileExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 22
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "eventlog"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/FileOperations;->readFromFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    .line 25
    :cond_0
    if-nez v0, :cond_1

    .line 26
    new-instance v0, Lcom/inmobi/commons/analytics/iat/impl/GoalList;

    invoke-direct {v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;-><init>()V

    .line 28
    :cond_1
    return-object v0
.end method


# virtual methods
.method public addGoal(Ljava/lang/String;IJIZ)Z
    .locals 9

    .prologue
    .line 87
    const/4 v1, 0x0

    .line 89
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    :cond_0
    const-string v0, "[InMobi]-[AdTracker]-4.5.5"

    const-string v1, "Goal name is null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const/4 v0, 0x0

    .line 131
    :goto_0
    return v0

    .line 94
    :cond_1
    const/4 v0, 0x1

    if-lt p2, v0, :cond_2

    const-wide/16 v2, 0x0

    cmp-long v0, p3, v2

    if-gez v0, :cond_3

    .line 95
    :cond_2
    const-string v0, "[InMobi]-[AdTracker]-4.5.5"

    const-string v1, "GoalCount cant be 0 or RetryTime cannot be negative"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    goto :goto_0

    .line 101
    :cond_3
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 102
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 103
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;

    .line 104
    iget-object v3, v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 105
    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/Goal$State;->REPORTING_REQUESTED:Lcom/inmobi/commons/analytics/iat/impl/Goal$State;

    iget-object v2, v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->state:Lcom/inmobi/commons/analytics/iat/impl/Goal$State;

    if-ne v1, v2, :cond_5

    .line 106
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempt to update goal ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") while it is being reported to the server! Ignoring ... "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    goto :goto_0

    .line 110
    :cond_5
    const/4 v1, 0x1

    .line 112
    const-string v2, "download"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    .line 113
    iget v2, v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->count:I

    add-int/2addr v2, p2

    iput v2, v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->count:I

    .line 115
    :cond_6
    iput p5, v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->retryCount:I

    .line 116
    iput-wide p3, v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->retryTime:J

    .line 117
    iput-boolean p6, v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->isDuplicate:Z

    move v0, v1

    .line 122
    :goto_1
    if-nez v0, :cond_7

    .line 123
    new-instance v1, Lcom/inmobi/commons/analytics/iat/impl/Goal;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/inmobi/commons/analytics/iat/impl/Goal;-><init>(Ljava/lang/String;IJIZ)V

    invoke-virtual {p0, v1}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    .line 125
    :catch_0
    move-exception v0

    .line 126
    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    move v0, v1

    goto :goto_1
.end method

.method public getGoal(Ljava/lang/String;)Lcom/inmobi/commons/analytics/iat/impl/Goal;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 37
    .line 38
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 39
    :cond_0
    const-string v0, "[InMobi]-[AdTracker]-4.5.5"

    const-string v2, "GoalName is null"

    invoke-static {v0, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 53
    :goto_0
    return-object v0

    .line 43
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 44
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 45
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;

    .line 46
    iget-object v3, v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 51
    goto :goto_0

    :cond_3
    move-object v0, v1

    .line 53
    goto :goto_0
.end method

.method public increaseRetryTime(Ljava/lang/String;IZ)Z
    .locals 10

    .prologue
    const/4 v3, 0x0

    .line 135
    if-eqz p1, :cond_0

    const-string v0, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 136
    :cond_0
    const-string v0, "[InMobi]-[AdTracker]-4.5.5"

    const-string v1, "GoalName cannot be null"

    invoke-static {v0, v1}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :cond_1
    :goto_0
    return v3

    .line 139
    :cond_2
    invoke-virtual {p0, p1}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->getGoal(Ljava/lang/String;)Lcom/inmobi/commons/analytics/iat/impl/Goal;

    move-result-object v2

    .line 140
    if-eqz v2, :cond_1

    .line 141
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->getRetryParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;->getMaxWaitTime()I

    move-result v4

    .line 142
    invoke-static {}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerInitializer;->getConfigParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerConfigParams;->getRetryParams()Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerGoalRetryParams;->getMaxRetry()I

    move-result v5

    .line 144
    iget-wide v0, v2, Lcom/inmobi/commons/analytics/iat/impl/Goal;->retryTime:J

    .line 145
    iget v6, v2, Lcom/inmobi/commons/analytics/iat/impl/Goal;->retryCount:I

    .line 146
    int-to-long v8, v4

    cmp-long v7, v0, v8

    if-gez v7, :cond_5

    .line 147
    const-wide/16 v8, 0x2

    mul-long/2addr v0, v8

    const-wide/16 v8, 0x7530

    add-long/2addr v0, v8

    .line 148
    int-to-long v8, v4

    cmp-long v7, v0, v8

    if-lez v7, :cond_3

    .line 149
    int-to-long v0, v4

    .line 154
    :cond_3
    :goto_1
    add-int/lit8 v4, v6, 0x1

    .line 155
    iput-wide v0, v2, Lcom/inmobi/commons/analytics/iat/impl/Goal;->retryTime:J

    .line 156
    iput v4, v2, Lcom/inmobi/commons/analytics/iat/impl/Goal;->retryCount:I

    .line 158
    if-lt v4, v5, :cond_4

    .line 159
    sget-object v1, Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;->GOAL_DUMPED:Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;

    const-wide/16 v4, 0x0

    const/4 v7, 0x0

    move v6, v3

    invoke-static/range {v1 .. v7}, Lcom/inmobi/commons/analytics/iat/impl/AdTrackerUtils;->reportMetric(Lcom/inmobi/commons/analytics/iat/impl/config/AdTrackerEventType;Lcom/inmobi/commons/analytics/iat/impl/Goal;IJILjava/lang/String;)V

    .line 161
    :cond_4
    const/4 v3, 0x1

    goto :goto_0

    .line 152
    :cond_5
    int-to-long v0, v4

    goto :goto_1
.end method

.method public removeGoal(Ljava/lang/String;I)Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 57
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    :cond_0
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    const-string v2, "GoalName is null"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :goto_0
    return v0

    .line 61
    :cond_1
    if-ge p2, v1, :cond_2

    .line 62
    const-string v1, "[InMobi]-[AdTracker]-4.5.5"

    const-string v2, "GoalCount cannot be 0 or negative"

    invoke-static {v1, v2}, Lcom/inmobi/commons/internal/Log;->internal(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 65
    :cond_2
    invoke-virtual {p0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 66
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 67
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;

    .line 68
    iget-object v3, v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->name:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 69
    iget v2, v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->count:I

    sub-int/2addr v2, p2

    .line 70
    const-string v3, "download"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 71
    invoke-virtual {p0, v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    move v0, v1

    .line 82
    goto :goto_0

    .line 74
    :cond_5
    if-gtz v2, :cond_6

    .line 75
    invoke-virtual {p0, v0}, Lcom/inmobi/commons/analytics/iat/impl/GoalList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 77
    :cond_6
    iput v2, v0, Lcom/inmobi/commons/analytics/iat/impl/Goal;->count:I

    goto :goto_1
.end method

.method public saveGoals()V
    .locals 2

    .prologue
    .line 33
    invoke-static {}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "eventlog"

    invoke-static {v0, v1, p0}, Lcom/inmobi/commons/internal/FileOperations;->saveToFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Z

    .line 34
    return-void
.end method
