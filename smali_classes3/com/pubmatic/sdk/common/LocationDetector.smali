.class public Lcom/pubmatic/sdk/common/LocationDetector;
.super Ljava/util/Observable;
.source "LocationDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pubmatic/sdk/common/LocationDetector$LocationListener;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String;

.field private static self:Lcom/pubmatic/sdk/common/LocationDetector;


# instance fields
.field private final MUTEX:Ljava/lang/Object;

.field private changed:Z

.field private context:Landroid/content/Context;

.field private location:Landroid/location/Location;

.field private locationListener:Lcom/pubmatic/sdk/common/LocationDetector$LocationListener;

.field private locationManager:Landroid/location/LocationManager;

.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Observer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-class v0, Lcom/pubmatic/sdk/common/LocationDetector;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pubmatic/sdk/common/LocationDetector;->TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 33
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 22
    iput-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->locationManager:Landroid/location/LocationManager;

    .line 23
    iput-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->locationListener:Lcom/pubmatic/sdk/common/LocationDetector$LocationListener;

    .line 29
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->MUTEX:Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcom/pubmatic/sdk/common/LocationDetector;->context:Landroid/content/Context;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->observers:Ljava/util/List;

    .line 36
    return-void
.end method

.method static synthetic access$002(Lcom/pubmatic/sdk/common/LocationDetector;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/pubmatic/sdk/common/LocationDetector;->location:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$102(Lcom/pubmatic/sdk/common/LocationDetector;Z)Z
    .locals 0

    .prologue
    .line 19
    iput-boolean p1, p0, Lcom/pubmatic/sdk/common/LocationDetector;->changed:Z

    return p1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/pubmatic/sdk/common/LocationDetector;
    .locals 1

    .prologue
    .line 39
    sget-object v0, Lcom/pubmatic/sdk/common/LocationDetector;->self:Lcom/pubmatic/sdk/common/LocationDetector;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Lcom/pubmatic/sdk/common/LocationDetector;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/common/LocationDetector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pubmatic/sdk/common/LocationDetector;->self:Lcom/pubmatic/sdk/common/LocationDetector;

    .line 41
    :cond_0
    sget-object v0, Lcom/pubmatic/sdk/common/LocationDetector;->self:Lcom/pubmatic/sdk/common/LocationDetector;

    return-object v0
.end method


# virtual methods
.method public addObserver(Ljava/util/Observer;)V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0, p1}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 48
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Null Observer"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_0
    iget-object v1, p0, Lcom/pubmatic/sdk/common/LocationDetector;->MUTEX:Ljava/lang/Object;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_1
    invoke-virtual {p0}, Lcom/pubmatic/sdk/common/LocationDetector;->isLocationDetectionEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/common/LocationDetector;->setLocationDetectionEnabled(Z)V

    .line 52
    :cond_2
    monitor-exit v1

    .line 53
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public declared-synchronized deleteObserver(Ljava/util/Observer;)V
    .locals 2

    .prologue
    .line 57
    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/Observable;->deleteObserver(Ljava/util/Observer;)V

    .line 58
    iget-object v1, p0, Lcom/pubmatic/sdk/common/LocationDetector;->MUTEX:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 59
    :try_start_1
    iget-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/common/LocationDetector;->setLocationDetectionEnabled(Z)V

    .line 61
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    monitor-exit p0

    return-void

    .line 61
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 57
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteObservers()V
    .locals 2

    .prologue
    .line 66
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Ljava/util/Observable;->deleteObservers()V

    .line 67
    iget-object v1, p0, Lcom/pubmatic/sdk/common/LocationDetector;->MUTEX:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 68
    :try_start_1
    iget-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/pubmatic/sdk/common/LocationDetector;->setLocationDetectionEnabled(Z)V

    .line 70
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 71
    monitor-exit p0

    return-void

    .line 70
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 66
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public enableLocationDetection(JFLandroid/location/Criteria;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 170
    if-nez p5, :cond_0

    if-nez p4, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "criteria or provider required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->context:Landroid/content/Context;

    const-string v1, "location"

    .line 174
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->locationManager:Landroid/location/LocationManager;

    .line 175
    iget-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_1

    .line 177
    if-nez p5, :cond_3

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->locationManager:Landroid/location/LocationManager;

    const/4 v1, 0x1

    invoke-virtual {v0, p4, v1}, Landroid/location/LocationManager;->getBestProvider(Landroid/location/Criteria;Z)Ljava/lang/String;

    move-result-object v1

    .line 182
    :goto_0
    if-eqz v1, :cond_1

    .line 183
    new-instance v0, Lcom/pubmatic/sdk/common/LocationDetector$LocationListener;

    invoke-direct {v0, p0}, Lcom/pubmatic/sdk/common/LocationDetector$LocationListener;-><init>(Lcom/pubmatic/sdk/common/LocationDetector;)V

    iput-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->locationListener:Lcom/pubmatic/sdk/common/LocationDetector$LocationListener;

    .line 185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v0, v2, :cond_2

    .line 187
    iget-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->context:Landroid/content/Context;

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result v0

    .line 189
    if-nez v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->locationManager:Landroid/location/LocationManager;

    iget-object v5, p0, Lcom/pubmatic/sdk/common/LocationDetector;->locationListener:Lcom/pubmatic/sdk/common/LocationDetector$LocationListener;

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 209
    :cond_1
    :goto_1
    return-void

    .line 197
    :cond_2
    iget-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->locationManager:Landroid/location/LocationManager;

    iget-object v5, p0, Lcom/pubmatic/sdk/common/LocationDetector;->locationListener:Lcom/pubmatic/sdk/common/LocationDetector$LocationListener;

    move-wide v2, p1

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 201
    :catch_0
    move-exception v0

    .line 202
    sget-object v1, Lcom/pubmatic/sdk/common/LocationDetector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error requesting location updates.  Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/LocationDetector;->locationListener:Lcom/pubmatic/sdk/common/LocationDetector$LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 205
    iput-object v6, p0, Lcom/pubmatic/sdk/common/LocationDetector;->locationManager:Landroid/location/LocationManager;

    .line 206
    iput-object v6, p0, Lcom/pubmatic/sdk/common/LocationDetector;->locationListener:Lcom/pubmatic/sdk/common/LocationDetector$LocationListener;

    goto :goto_1

    :cond_3
    move-object v1, p5

    goto :goto_0
.end method

.method public getUpdate(Ljava/util/Observer;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->location:Landroid/location/Location;

    .line 92
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLocationDetectionEnabled()Z
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    .line 107
    const/4 v0, 0x1

    .line 110
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyObservers()V
    .locals 3

    .prologue
    .line 74
    .line 76
    iget-object v1, p0, Lcom/pubmatic/sdk/common/LocationDetector;->MUTEX:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-boolean v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->changed:Z

    if-nez v0, :cond_1

    .line 78
    monitor-exit v1

    .line 86
    :cond_0
    return-void

    .line 79
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/pubmatic/sdk/common/LocationDetector;->observers:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 80
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pubmatic/sdk/common/LocationDetector;->changed:Z

    .line 81
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Observer;

    .line 83
    iget-object v2, p0, Lcom/pubmatic/sdk/common/LocationDetector;->location:Landroid/location/Location;

    invoke-interface {v0, p0, v2}, Ljava/util/Observer;->update(Ljava/util/Observable;Ljava/lang/Object;)V

    goto :goto_0

    .line 81
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setLocationDetectionEnabled(Z)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .line 125
    if-nez p1, :cond_1

    .line 126
    iget-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->locationManager:Landroid/location/LocationManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->locationListener:Lcom/pubmatic/sdk/common/LocationDetector$LocationListener;

    if-eqz v0, :cond_0

    .line 128
    :try_start_0
    iget-object v0, p0, Lcom/pubmatic/sdk/common/LocationDetector;->locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/pubmatic/sdk/common/LocationDetector;->locationListener:Lcom/pubmatic/sdk/common/LocationDetector$LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_0
    iput-object v6, p0, Lcom/pubmatic/sdk/common/LocationDetector;->locationManager:Landroid/location/LocationManager;

    .line 134
    iput-object v6, p0, Lcom/pubmatic/sdk/common/LocationDetector;->locationListener:Lcom/pubmatic/sdk/common/LocationDetector$LocationListener;

    .line 151
    :cond_0
    :goto_1
    return-void

    .line 140
    :cond_1
    new-instance v5, Landroid/location/Criteria;

    invoke-direct {v5}, Landroid/location/Criteria;-><init>()V

    .line 141
    invoke-virtual {v5, v0}, Landroid/location/Criteria;->setCostAllowed(Z)V

    .line 143
    invoke-virtual {v5, v0}, Landroid/location/Criteria;->setPowerRequirement(I)V

    .line 144
    invoke-virtual {v5, v0}, Landroid/location/Criteria;->setBearingRequired(Z)V

    .line 145
    invoke-virtual {v5, v0}, Landroid/location/Criteria;->setSpeedRequired(Z)V

    .line 146
    invoke-virtual {v5, v0}, Landroid/location/Criteria;->setAltitudeRequired(Z)V

    .line 147
    const/4 v0, 0x2

    invoke-virtual {v5, v0}, Landroid/location/Criteria;->setAccuracy(I)V

    .line 149
    const-wide/32 v2, 0x927c0

    const/high16 v4, 0x41a00000    # 20.0f

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/pubmatic/sdk/common/LocationDetector;->enableLocationDetection(JFLandroid/location/Criteria;Ljava/lang/String;)V

    goto :goto_1

    .line 130
    :catch_0
    move-exception v0

    goto :goto_0
.end method
