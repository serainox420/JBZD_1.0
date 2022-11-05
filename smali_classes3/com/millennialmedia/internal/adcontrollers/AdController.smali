.class public abstract Lcom/millennialmedia/internal/adcontrollers/AdController;
.super Ljava/lang/Object;
.source "AdController.java"


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adcontrollers/AdController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/millennialmedia/internal/adcontrollers/AdController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/AdController;->a:Ljava/lang/String;

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/adcontrollers/AdController;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getControllerClassForContent(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/AdController;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to get controller class for ad content.\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_0
    const/4 v1, 0x0

    .line 60
    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/AdController;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adcontrollers/AdController;

    .line 61
    invoke-virtual {v0, p0}, Lcom/millennialmedia/internal/adcontrollers/AdController;->canHandleContent(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 62
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 63
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 64
    sget-object v1, Lcom/millennialmedia/internal/adcontrollers/AdController;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found controller class <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> for ad content"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :cond_2
    :goto_0
    if-nez v0, :cond_3

    .line 71
    sget-object v1, Lcom/millennialmedia/internal/adcontrollers/AdController;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find AdController for content <"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :cond_3
    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method public static registerController(Lcom/millennialmedia/internal/adcontrollers/AdController;)V
    .locals 3

    .prologue
    .line 35
    if-nez p0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to register ad controller, specified controller cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_0
    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/AdController;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 40
    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/AdController;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad controller <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> already registered"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :goto_0
    return-void

    .line 45
    :cond_1
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 46
    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/AdController;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering ad controller <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    :cond_2
    sget-object v0, Lcom/millennialmedia/internal/adcontrollers/AdController;->b:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static registerPackagedControllers()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-direct {v0}, Lcom/millennialmedia/internal/adcontrollers/LightboxController;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/AdController;->registerController(Lcom/millennialmedia/internal/adcontrollers/AdController;)V

    .line 27
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-direct {v0}, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/AdController;->registerController(Lcom/millennialmedia/internal/adcontrollers/AdController;)V

    .line 28
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/NativeController;

    invoke-direct {v0}, Lcom/millennialmedia/internal/adcontrollers/NativeController;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/AdController;->registerController(Lcom/millennialmedia/internal/adcontrollers/AdController;)V

    .line 29
    new-instance v0, Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-direct {v0}, Lcom/millennialmedia/internal/adcontrollers/WebController;-><init>()V

    invoke-static {v0}, Lcom/millennialmedia/internal/adcontrollers/AdController;->registerController(Lcom/millennialmedia/internal/adcontrollers/AdController;)V

    .line 30
    return-void
.end method


# virtual methods
.method public abstract canHandleContent(Ljava/lang/String;)Z
.end method
