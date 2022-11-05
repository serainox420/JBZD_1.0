.class final Lcom/google/android/gms/internal/zzbwf$18;
.super Lcom/google/android/gms/internal/zzbvc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/zzbwf;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/zzbvc",
        "<",
        "Lcom/google/android/gms/internal/zzbuq;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/internal/zzbvc;-><init>()V

    return-void
.end method


# virtual methods
.method public zzD(Lcom/google/android/gms/internal/zzbwh;)Lcom/google/android/gms/internal/zzbuq;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/zzbwf$26;->zzcqV:[I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->zzadF()Lcom/google/android/gms/internal/zzbwi;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/zzbwi;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/internal/zzbuw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->nextString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbuw;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->nextString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/google/android/gms/internal/zzbuw;

    new-instance v2, Lcom/google/android/gms/internal/zzbvn;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/zzbvn;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/google/android/gms/internal/zzbuw;-><init>(Ljava/lang/Number;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Lcom/google/android/gms/internal/zzbuw;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->nextBoolean()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbuw;-><init>(Ljava/lang/Boolean;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->nextNull()V

    sget-object v0, Lcom/google/android/gms/internal/zzbus;->zzcpt:Lcom/google/android/gms/internal/zzbus;

    goto :goto_0

    :pswitch_4
    new-instance v1, Lcom/google/android/gms/internal/zzbun;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbun;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->beginArray()V

    :goto_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbwf$18;->zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbuq;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/zzbun;->zzc(Lcom/google/android/gms/internal/zzbuq;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->endArray()V

    move-object v0, v1

    goto :goto_0

    :pswitch_5
    new-instance v1, Lcom/google/android/gms/internal/zzbut;

    invoke-direct {v1}, Lcom/google/android/gms/internal/zzbut;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->beginObject()V

    :goto_2
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->nextName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbwf$18;->zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbuq;

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/internal/zzbut;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/zzbuq;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwh;->endObject()V

    move-object v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public zza(Lcom/google/android/gms/internal/zzbwj;Lcom/google/android/gms/internal/zzbuq;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbuq;->zzadn()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadP()Lcom/google/android/gms/internal/zzbwj;

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbuq;->zzadm()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbuq;->zzadq()Lcom/google/android/gms/internal/zzbuw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbuw;->zzadt()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbuw;->zzadi()Ljava/lang/Number;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbwj;->zza(Ljava/lang/Number;)Lcom/google/android/gms/internal/zzbwj;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbuw;->zzads()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbuw;->getAsBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbwj;->zzbl(Z)Lcom/google/android/gms/internal/zzbwj;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbuw;->zzadj()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/zzbwj;->zzjW(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbwj;

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbuq;->zzadk()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadL()Lcom/google/android/gms/internal/zzbwj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbuq;->zzadp()Lcom/google/android/gms/internal/zzbun;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbun;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbuq;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbwf$18;->zza(Lcom/google/android/gms/internal/zzbwj;Lcom/google/android/gms/internal/zzbuq;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadM()Lcom/google/android/gms/internal/zzbwj;

    goto :goto_0

    :cond_6
    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbuq;->zzadl()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadN()Lcom/google/android/gms/internal/zzbwj;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/zzbuq;->zzado()Lcom/google/android/gms/internal/zzbut;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/zzbut;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/zzbwj;->zzjV(Ljava/lang/String;)Lcom/google/android/gms/internal/zzbwj;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/zzbuq;

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/zzbwf$18;->zza(Lcom/google/android/gms/internal/zzbwj;Lcom/google/android/gms/internal/zzbuq;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/google/android/gms/internal/zzbwj;->zzadO()Lcom/google/android/gms/internal/zzbwj;

    goto/16 :goto_0

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0xf

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Couldn\'t write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic zza(Lcom/google/android/gms/internal/zzbwj;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p2, Lcom/google/android/gms/internal/zzbuq;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/zzbwf$18;->zza(Lcom/google/android/gms/internal/zzbwj;Lcom/google/android/gms/internal/zzbuq;)V

    return-void
.end method

.method public synthetic zzb(Lcom/google/android/gms/internal/zzbwh;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/zzbwf$18;->zzD(Lcom/google/android/gms/internal/zzbwh;)Lcom/google/android/gms/internal/zzbuq;

    move-result-object v0

    return-object v0
.end method
