.class final enum Lcom/google/android/gms/internal/zzbpf;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/zzbpi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/zzbpf;",
        ">;",
        "Lcom/google/android/gms/internal/zzbpi;"
    }
.end annotation


# static fields
.field public static final enum zzcee:Lcom/google/android/gms/internal/zzbpf;

.field static zzcef:Ljava/util/concurrent/ThreadFactory;

.field static final zzceg:Lcom/google/android/gms/internal/zzbpt;

.field private static final synthetic zzceh:[Lcom/google/android/gms/internal/zzbpf;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzbpf;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbpf;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbpf;->zzcee:Lcom/google/android/gms/internal/zzbpf;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbpf;

    sget-object v1, Lcom/google/android/gms/internal/zzbpf;->zzcee:Lcom/google/android/gms/internal/zzbpf;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/zzbpf;->zzceh:[Lcom/google/android/gms/internal/zzbpf;

    new-instance v0, Lcom/google/android/gms/internal/zzbpf$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbpf$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbpf;->zzceg:Lcom/google/android/gms/internal/zzbpt;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static isActive()Z
    .locals 1

    invoke-static {}, Lcom/google/android/gms/internal/zzbpf;->zzYN()Ljava/util/concurrent/ThreadFactory;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static values()[Lcom/google/android/gms/internal/zzbpf;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbpf;->zzceh:[Lcom/google/android/gms/internal/zzbpf;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzbpf;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzbpf;

    return-object v0
.end method

.method private static zzYN()Ljava/util/concurrent/ThreadFactory;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/google/android/gms/internal/zzbpf;->zzcef:Ljava/util/concurrent/ThreadFactory;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "com.google.appengine.api.ThreadManager"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "backgroundThreadFactory"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ThreadFactory;

    sput-object v0, Lcom/google/android/gms/internal/zzbpf;->zzcef:Ljava/util/concurrent/ThreadFactory;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzbpf;->zzcef:Ljava/util/concurrent/ThreadFactory;

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public initialize()V
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/zzbpf;->zzcef:Ljava/util/concurrent/ThreadFactory;

    new-instance v1, Lcom/google/android/gms/internal/zzbpf$2;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/zzbpf$2;-><init>(Lcom/google/android/gms/internal/zzbpf;)V

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/zzbsm;->zza(Ljava/util/concurrent/ThreadFactory;Lcom/google/android/gms/internal/zzbsl;)V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzbpa;Lcom/google/android/gms/internal/zzbol;Lcom/google/android/gms/internal/zzbon;Lcom/google/android/gms/internal/zzbop$zza;)Lcom/google/android/gms/internal/zzbop;
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/zzboq;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbpa;->zzYy()Lcom/google/android/gms/internal/zzbol;

    move-result-object v1

    invoke-direct {v0, v1, p3, p4}, Lcom/google/android/gms/internal/zzboq;-><init>(Lcom/google/android/gms/internal/zzbol;Lcom/google/android/gms/internal/zzbon;Lcom/google/android/gms/internal/zzbop$zza;)V

    return-object v0
.end method

.method public zza(Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/zzbow;
    .locals 2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Authentication is not implemented yet"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbpa;)Lcom/google/android/gms/internal/zzbpe;
    .locals 3

    new-instance v0, Lcom/google/android/gms/internal/zzbpu;

    invoke-static {}, Lcom/google/android/gms/internal/zzbpf;->zzYN()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzbpf;->zzceg:Lcom/google/android/gms/internal/zzbpt;

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbpu;-><init>(Ljava/util/concurrent/ThreadFactory;Lcom/google/android/gms/internal/zzbpt;)V

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbpa;Ljava/lang/String;)Lcom/google/android/gms/internal/zzbql;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public zza(Lcom/google/android/gms/internal/zzbpa;Lcom/google/android/gms/internal/zzbro$zza;Ljava/util/List;)Lcom/google/android/gms/internal/zzbro;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/zzbpa;",
            "Lcom/google/android/gms/internal/zzbro$zza;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/google/android/gms/internal/zzbro;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/zzbrm;

    invoke-direct {v0, p2, p3}, Lcom/google/android/gms/internal/zzbrm;-><init>(Lcom/google/android/gms/internal/zzbro$zza;Ljava/util/List;)V

    return-object v0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbpa;)Lcom/google/android/gms/internal/zzbpm;
    .locals 2

    const-string v0, "RunLoop"

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbpa;->zziV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbrn;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/zzbpf$3;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzbpf$3;-><init>(Lcom/google/android/gms/internal/zzbpf;Lcom/google/android/gms/internal/zzbrn;)V

    return-object v1
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbpa;)Ljava/lang/String;
    .locals 4

    const-string v0, "AppEngine"

    const-string v1, "java.specification.version"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
