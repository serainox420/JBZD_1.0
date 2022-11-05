package com.google.android.gms.nearby.messages.audio;

import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.nearby.messages.Message;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class AudioBytes {
    public static final int MAX_SIZE = 10;
    private final byte[] zzbAf;

    public AudioBytes(byte[] bArr) {
        boolean z = true;
        zzac.zzw(bArr);
        zzac.zzb(bArr.length <= 10, "Given byte array longer than 10 bytes, given by AudioBytes.MAX_SIZE.");
        zzac.zzb(bArr.length <= 0 ? false : z, "Given byte array is of zero length.");
        this.zzbAf = bArr;
    }

    public static AudioBytes from(Message message) {
        zzac.zzw(message);
        boolean zzgm = message.zzgm(Message.MESSAGE_TYPE_AUDIO_BYTES);
        String valueOf = String.valueOf(message.getType());
        zzac.zzb(zzgm, new StringBuilder(String.valueOf(valueOf).length() + 56).append("Message type '").append(valueOf).append("' is not Message.MESSAGE_TYPE_AUDIO_BYTES.").toString());
        return new AudioBytes(message.getContent());
    }

    public byte[] getBytes() {
        return this.zzbAf;
    }

    public Message toMessage() {
        return new Message(this.zzbAf, Message.MESSAGE_NAMESPACE_RESERVED, Message.MESSAGE_TYPE_AUDIO_BYTES);
    }

    public String toString() {
        String valueOf = String.valueOf(Arrays.toString(this.zzbAf));
        return new StringBuilder(String.valueOf(valueOf).length() + 14).append("AudioBytes [").append(valueOf).append(" ]").toString();
    }
}
