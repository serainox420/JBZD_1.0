.class public abstract Lcom/millennialmedia/internal/adadapters/AdAdapter;
.super Ljava/lang/Object;
.source "AdAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;,
        Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/String;

.field private static d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:Ljava/lang/String;

.field protected b:Lcom/millennialmedia/internal/AdMetadata;

.field public requestTimeout:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->c:Ljava/lang/String;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->d:Ljava/util/List;

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->e:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Lcom/millennialmedia/internal/AdMetadata;

    invoke-direct {v0}, Lcom/millennialmedia/internal/AdMetadata;-><init>()V

    iput-object v0, p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->b:Lcom/millennialmedia/internal/AdMetadata;

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->requestTimeout:I

    return-void
.end method

.method public static getAdapterInstance(Ljava/lang/Class;Ljava/lang/Class;)Lcom/millennialmedia/internal/adadapters/AdAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/millennialmedia/internal/adadapters/AdAdapter;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 166
    .line 169
    sget-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;

    .line 170
    iget-object v3, v0, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;->a:Ljava/lang/Class;

    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 171
    iget-object v4, v0, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;->c:Ljava/lang/Class;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 173
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 174
    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;->b:Ljava/lang/Class;

    .line 181
    :goto_0
    if-nez v0, :cond_1

    .line 182
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Unable to find adapter class"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :catch_0
    move-exception v0

    .line 188
    sget-object v2, Lcom/millennialmedia/internal/adadapters/AdAdapter;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create ad adapter instance for the placement type <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> and ad controller type <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 192
    :goto_1
    return-object v0

    .line 185
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static getMediatedAdapterInstance(Ljava/lang/String;Ljava/lang/Class;)Lcom/millennialmedia/internal/adadapters/AdAdapter;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/millennialmedia/internal/adadapters/AdAdapter;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 198
    .line 201
    sget-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;

    .line 202
    iget-object v3, v0, Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;->b:Ljava/lang/Class;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;->a:Ljava/lang/String;

    .line 203
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 205
    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;->c:Ljava/lang/Class;

    .line 212
    :goto_0
    if-nez v0, :cond_1

    .line 213
    :try_start_0
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Unable to find ad mediation adapter class"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :catch_0
    move-exception v0

    .line 219
    sget-object v2, Lcom/millennialmedia/internal/adadapters/AdAdapter;->c:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create ad mediation adapter instance for the placement type <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> and mediation ID <"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/millennialmedia/MMLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 223
    :goto_1
    return-object v0

    .line 216
    :cond_1
    const/4 v2, 0x0

    :try_start_1
    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method public static registerAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 86
    const-class v0, Lcom/millennialmedia/internal/AdPlacement;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to register ad adapter, specified placement class is not an instance of AdPlacement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    const-class v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 92
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to register ad adapter, specified adapter class is not an instance of AdAdapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 96
    :cond_1
    const-class v0, Lcom/millennialmedia/internal/adcontrollers/AdController;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 97
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to register ad adapter, specified controller class is not an instance of AdController"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_2
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 102
    sget-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering ad adapter <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> for ad placement <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> and ad controller <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    :cond_3
    sget-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 107
    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;

    .line 109
    iget-object v2, v0, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;->a:Ljava/lang/Class;

    if-ne v2, p0, :cond_4

    iget-object v2, v0, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;->b:Ljava/lang/Class;

    if-ne v2, p1, :cond_4

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;->c:Ljava/lang/Class;

    if-ne v0, p2, :cond_4

    .line 113
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 116
    :cond_5
    sget-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->d:Ljava/util/List;

    new-instance v1, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;

    invoke-direct {v1, p0, p1, p2}, Lcom/millennialmedia/internal/adadapters/AdAdapter$AdapterRegistration;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    return-void
.end method

.method public static registerMediatedAdapter(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 123
    if-nez p0, :cond_0

    .line 124
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to register mediation ad adapter, specified mediation ID cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_0
    const-class v0, Lcom/millennialmedia/internal/AdPlacement;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 129
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to register mediation ad adapter, specified placement class is not an instance of AdPlacement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1
    const-class v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to register mediated ad adapter, specified adapter class is not an instance of AdAdapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_2
    const-class v0, Lcom/millennialmedia/internal/adadapters/MediatedAdAdapter;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 140
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to register mediated ad adapter, specified adapter class does not implement MediatedAdAdapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_3
    invoke-static {}, Lcom/millennialmedia/MMLog;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 146
    sget-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->c:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering ad adapter <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> for mediation id <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "> and ad placement <"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ">"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/millennialmedia/MMLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    :cond_4
    sget-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 151
    :cond_5
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 152
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;

    .line 153
    iget-object v2, v0, Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;->a:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;->b:Ljava/lang/Class;

    if-ne v2, p1, :cond_5

    iget-object v0, v0, Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;->c:Ljava/lang/Class;

    if-ne v0, p2, :cond_5

    .line 157
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 160
    :cond_6
    sget-object v0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->e:Ljava/util/List;

    new-instance v1, Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;

    invoke-direct {v1, p0, p1, p2}, Lcom/millennialmedia/internal/adadapters/AdAdapter$MediatedAdapterRegistration;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public static registerPackagedAdapters()V
    .locals 3

    .prologue
    .line 75
    const-class v0, Lcom/millennialmedia/InlineAd;

    const-class v1, Lcom/millennialmedia/internal/adadapters/InlineLightboxAdapter;

    const-class v2, Lcom/millennialmedia/internal/adcontrollers/LightboxController;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 76
    const-class v0, Lcom/millennialmedia/InterstitialAd;

    const-class v1, Lcom/millennialmedia/internal/adadapters/InterstitialVASTVideoAdapter;

    const-class v2, Lcom/millennialmedia/internal/adcontrollers/VASTVideoController;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 77
    const-class v0, Lcom/millennialmedia/InlineAd;

    const-class v1, Lcom/millennialmedia/internal/adadapters/InlineWebAdapter;

    const-class v2, Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 78
    const-class v0, Lcom/millennialmedia/InterstitialAd;

    const-class v1, Lcom/millennialmedia/internal/adadapters/InterstitialWebAdapter;

    const-class v2, Lcom/millennialmedia/internal/adcontrollers/WebController;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 79
    const-class v0, Lcom/millennialmedia/NativeAd;

    const-class v1, Lcom/millennialmedia/internal/adadapters/NativeNativeAdapter;

    const-class v2, Lcom/millennialmedia/internal/adcontrollers/NativeController;

    invoke-static {v0, v1, v2}, Lcom/millennialmedia/internal/adadapters/AdAdapter;->registerAdapter(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 80
    return-void
.end method


# virtual methods
.method public setAdMetadata(Lcom/millennialmedia/internal/AdMetadata;)V
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->b:Lcom/millennialmedia/internal/AdMetadata;

    invoke-virtual {v0, p1}, Lcom/millennialmedia/internal/AdMetadata;->addAll(Lcom/millennialmedia/internal/AdMetadata;)V

    .line 236
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/millennialmedia/internal/adadapters/AdAdapter;->a:Ljava/lang/String;

    .line 230
    return-void
.end method
