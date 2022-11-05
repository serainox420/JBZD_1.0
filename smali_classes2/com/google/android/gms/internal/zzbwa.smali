.class public final Lcom/google/android/gms/internal/zzbwa;
.super Lcom/google/android/gms/internal/zzbvc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbvc",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# static fields
.field public static final zzcqF:Lcom/google/android/gms/internal/zzbvd;


# instance fields
.field private final zzcpB:Lcom/google/android/gms/internal/zzbuk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/zzbwa$1;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbwa$1;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/zzbwa;->zzcqF:Lcom/google/android/gms/internal/zzbvd;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/gms/internal/zzbuk;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbvc;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/zzbwa;->zzcpB:Lcom/google/android/gms/internal/zzbuk;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/zzbuk;Lcom/google/android/gms/internal/zzbwa$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/zzbwa;-><init>(Lcom/google/android/gms/internal/zzbuk;)V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadP()Lcom/google/android/gms/internal/zzbwj;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/zzbwa;->zzcpB:Lcom/google/android/gms/internal/zzbuk;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/zzbuk;->zzj(Ljava/lang/Class;)Lcom/google/android/gms/internal/zzbvc;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/zzbwa;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadN()Lcom/google/android/gms/internal/zzbwj;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadO()Lcom/google/android/gms/internal/zzbwj;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/zzbvc;->zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->zzadF()Lcom/google/android/gms/internal/zzbwi;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/zzbwa$2;->zzcqV:[I

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbwi;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->beginArray()V

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbwa;->zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->endArray()V

    :goto_1
    return-object v0

    :pswitch_1
    new-instance v0, Lcom/google/android/gms/internal/zzbvo;

    invoke-direct {v0}, Lcom/google/android/gms/internal/zzbvo;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->beginObject()V

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbwa;->zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->endObject()V

    goto :goto_1

    :pswitch_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->nextString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->nextDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_1

    :pswitch_4
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->nextBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1

    :pswitch_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->nextNull()V

    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
