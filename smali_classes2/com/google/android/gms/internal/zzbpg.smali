.class final enum Lcom/google/android/gms/internal/zzbpg;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/google/android/gms/internal/zzbpi;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/gms/internal/zzbpg;",
        ">;",
        "Lcom/google/android/gms/internal/zzbpi;"
    }
.end annotation


# static fields
.field public static final enum zzcei:Lcom/google/android/gms/internal/zzbpg;

.field private static final synthetic zzcej:[Lcom/google/android/gms/internal/zzbpg;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lcom/google/android/gms/internal/zzbpg;

    const-string v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/zzbpg;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/gms/internal/zzbpg;->zzcei:Lcom/google/android/gms/internal/zzbpg;

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/google/android/gms/internal/zzbpg;

    sget-object v1, Lcom/google/android/gms/internal/zzbpg;->zzcei:Lcom/google/android/gms/internal/zzbpg;

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/gms/internal/zzbpg;->zzcej:[Lcom/google/android/gms/internal/zzbpg;

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

.method public static values()[Lcom/google/android/gms/internal/zzbpg;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzbpg;->zzcej:[Lcom/google/android/gms/internal/zzbpg;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/zzbpg;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/zzbpg;

    return-object v0
.end method


# virtual methods
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

    invoke-static {}, Ljava/util/concurrent/Executors;->defaultThreadFactory()Ljava/util/concurrent/ThreadFactory;

    move-result-object v1

    sget-object v2, Lcom/google/android/gms/internal/zzbpt;->zzcgl:Lcom/google/android/gms/internal/zzbpt;

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

    new-instance v1, Lcom/google/android/gms/internal/zzbpg$1;

    invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/zzbpg$1;-><init>(Lcom/google/android/gms/internal/zzbpg;Lcom/google/android/gms/internal/zzbrn;)V

    return-object v1
.end method

.method public zzc(Lcom/google/android/gms/internal/zzbpa;)Ljava/lang/String;
    .locals 4

    const-string v0, "java.vm.name"

    const-string v1, "Unknown JVM"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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
