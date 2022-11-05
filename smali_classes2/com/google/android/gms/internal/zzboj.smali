.class Lcom/google/android/gms/internal/zzboj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/zzbot$zza;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/zzboj$zzc;,
        Lcom/google/android/gms/internal/zzboj$zza;,
        Lcom/google/android/gms/internal/zzboj$zzb;
    }
.end annotation


# static fields
.field private static zzcbr:J


# instance fields
.field private final zzcaF:Lcom/google/android/gms/internal/zzbrn;

.field private zzcbs:Lcom/google/android/gms/internal/zzbon;

.field private zzcbt:Lcom/google/android/gms/internal/zzbot;

.field private zzcbu:Lcom/google/android/gms/internal/zzboj$zza;

.field private zzcbv:Lcom/google/android/gms/internal/zzboj$zzc;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/google/android/gms/internal/zzboj;->zzcbr:J

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/zzbol;Lcom/google/android/gms/internal/zzbon;Ljava/lang/String;Lcom/google/android/gms/internal/zzboj$zza;Ljava/lang/String;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lcom/google/android/gms/internal/zzboj;->zzcbr:J

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    sput-wide v2, Lcom/google/android/gms/internal/zzboj;->zzcbr:J

    iput-object p2, p0, Lcom/google/android/gms/internal/zzboj;->zzcbs:Lcom/google/android/gms/internal/zzbon;

    iput-object p4, p0, Lcom/google/android/gms/internal/zzboj;->zzcbu:Lcom/google/android/gms/internal/zzboj$zza;

    new-instance v2, Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbol;->zzXr()Lcom/google/android/gms/internal/zzbro;

    move-result-object v3

    const-string v4, "Connection"

    const/16 v5, 0x19

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "conn_"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v3, v4, v0}, Lcom/google/android/gms/internal/zzbrn;-><init>(Lcom/google/android/gms/internal/zzbro;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    sget-object v0, Lcom/google/android/gms/internal/zzboj$zzc;->zzcbz:Lcom/google/android/gms/internal/zzboj$zzc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbv:Lcom/google/android/gms/internal/zzboj$zzc;

    new-instance v0, Lcom/google/android/gms/internal/zzbot;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p0

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/zzbot;-><init>(Lcom/google/android/gms/internal/zzbol;Lcom/google/android/gms/internal/zzbon;Ljava/lang/String;Lcom/google/android/gms/internal/zzbot$zza;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbt:Lcom/google/android/gms/internal/zzbot;

    return-void
.end method

.method private zzau(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "received data message: "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbu:Lcom/google/android/gms/internal/zzboj$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzboj$zza;->zzau(Ljava/util/Map;)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private zzav(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Got control message: "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :try_start_0
    const-string v0, "t"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_8

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "d"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzboj;->zziH(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    :try_start_1
    const-string v1, "r"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "d"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzboj;->zziI(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Failed to parse control message: "

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzboj;->close()V

    goto :goto_1

    :cond_5
    :try_start_2
    const-string v1, "h"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "d"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzboj;->zzaw(Ljava/util/Map;)V

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Ignoring unknown control message: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Got invalid control message: "

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_a

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzboj;->close()V

    goto/16 :goto_1

    :cond_a
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/ClassCastException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :cond_b
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private zzaw(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ts"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string v0, "h"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboj;->zzcbu:Lcom/google/android/gms/internal/zzboj$zza;

    invoke-interface {v1, v0}, Lcom/google/android/gms/internal/zzboj$zza;->zziJ(Ljava/lang/String;)V

    const-string v0, "s"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboj;->zzcbv:Lcom/google/android/gms/internal/zzboj$zzc;

    sget-object v4, Lcom/google/android/gms/internal/zzboj$zzc;->zzcbz:Lcom/google/android/gms/internal/zzboj$zzc;

    if-ne v1, v4, :cond_0

    invoke-direct {p0, v2, v3, v0}, Lcom/google/android/gms/internal/zzboj;->zzi(JLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private zzb(Ljava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbv:Lcom/google/android/gms/internal/zzboj$zzc;

    sget-object v1, Lcom/google/android/gms/internal/zzboj$zzc;->zzcbA:Lcom/google/android/gms/internal/zzboj$zzc;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "Tried to send on an unconnected connection"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "Sending data (contents hidden)"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbt:Lcom/google/android/gms/internal/zzbot;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/zzbot;->send(Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "Sending data: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private zzi(JLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "realtime connection established"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzboj$zzc;->zzcbA:Lcom/google/android/gms/internal/zzboj$zzc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbv:Lcom/google/android/gms/internal/zzboj$zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbu:Lcom/google/android/gms/internal/zzboj$zza;

    invoke-interface {v0, p1, p2, p3}, Lcom/google/android/gms/internal/zzboj$zza;->zzj(JLjava/lang/String;)V

    return-void
.end method

.method private zziH(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "Connection shutdown command received. Shutting down..."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbu:Lcom/google/android/gms/internal/zzboj$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzboj$zza;->zziK(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzboj;->close()V

    return-void
.end method

.method private zziI(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboj;->zzcbs:Lcom/google/android/gms/internal/zzbon;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbon;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x3e

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Got a reset; killing connection to "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; Updating internalHost to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbu:Lcom/google/android/gms/internal/zzboj$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzboj$zza;->zziJ(Ljava/lang/String;)V

    sget-object v0, Lcom/google/android/gms/internal/zzboj$zzb;->zzcbw:Lcom/google/android/gms/internal/zzboj$zzb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzboj;->zza(Lcom/google/android/gms/internal/zzboj$zzb;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/zzboj$zzb;->zzcbx:Lcom/google/android/gms/internal/zzboj$zzb;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/zzboj;->zza(Lcom/google/android/gms/internal/zzboj$zzb;)V

    return-void
.end method

.method public open()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "Opening a connection"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbt:Lcom/google/android/gms/internal/zzbot;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbot;->open()V

    return-void
.end method

.method public zza(Lcom/google/android/gms/internal/zzboj$zzb;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbv:Lcom/google/android/gms/internal/zzboj$zzc;

    sget-object v1, Lcom/google/android/gms/internal/zzboj$zzc;->zzcbB:Lcom/google/android/gms/internal/zzboj$zzc;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "closing realtime connection"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/zzboj$zzc;->zzcbB:Lcom/google/android/gms/internal/zzboj$zzc;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbv:Lcom/google/android/gms/internal/zzboj$zzc;

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbt:Lcom/google/android/gms/internal/zzbot;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbt:Lcom/google/android/gms/internal/zzbot;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbot;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbt:Lcom/google/android/gms/internal/zzbot;

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbu:Lcom/google/android/gms/internal/zzboj$zza;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/zzboj$zza;->zzb(Lcom/google/android/gms/internal/zzboj$zzb;)V

    :cond_2
    return-void
.end method

.method public zza(Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "t"

    const-string v2, "d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "d"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/internal/zzboj;->zzb(Ljava/util/Map;Z)V

    return-void
.end method

.method public zzat(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    :try_start_0
    const-string v0, "t"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    const-string v1, "d"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "d"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzboj;->zzau(Ljava/util/Map;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "c"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "d"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/zzboj;->zzav(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Failed to parse server message: "

    invoke-virtual {v0}, Ljava/lang/ClassCastException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v2, v4, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzboj;->close()V

    goto :goto_0

    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Ignoring unknown server message type: "

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v1, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v2, "Failed to parse server message: missing message type:"

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzboj;->close()V

    goto/16 :goto_0

    :cond_7
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public zzba(Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbt:Lcom/google/android/gms/internal/zzbot;

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcbv:Lcom/google/android/gms/internal/zzboj$zzc;

    sget-object v1, Lcom/google/android/gms/internal/zzboj$zzc;->zzcbz:Lcom/google/android/gms/internal/zzboj$zzc;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "Realtime connection failed"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/zzboj;->close()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbrn;->zzaaD()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/zzboj;->zzcaF:Lcom/google/android/gms/internal/zzbrn;

    const-string v1, "Realtime connection lost"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/zzbrn;->zzi(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
